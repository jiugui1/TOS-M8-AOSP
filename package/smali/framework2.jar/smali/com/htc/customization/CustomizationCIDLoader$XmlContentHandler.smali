.class Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;
.super Lcom/htc/customization/BaseXmlHandler;
.source "CustomizationCIDLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/customization/CustomizationCIDLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XmlContentHandler"
.end annotation


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mCurrentModule:Lcom/htc/customization/ModuleReader;

.field private mItemName:Ljava/lang/String;

.field private mItemType:Ljava/lang/String;

.field private mSetName:Ljava/lang/String;

.field private mSetType:Ljava/lang/String;

.field private mTarget:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/customization/HtcCustomizationReader;",
            ">;"
        }
    .end annotation
.end field

.field private mTempIntVals:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempStrVals:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/customization/CustomizationCIDLoader;


# direct methods
.method public constructor <init>(Lcom/htc/customization/CustomizationCIDLoader;)V
    .locals 1

    .prologue
    .line 78
    iput-object p1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->this$0:Lcom/htc/customization/CustomizationCIDLoader;

    invoke-direct {p0}, Lcom/htc/customization/BaseXmlHandler;-><init>()V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mItemType:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mSetName:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mSetType:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    .line 66
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTempStrVals:Ljava/util/Vector;

    .line 67
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTempIntVals:Ljava/util/Vector;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCategory:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private clearForArrayType()V
    .locals 1

    .prologue
    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mSetName:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mSetType:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTempStrVals:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 75
    iget-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTempIntVals:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 76
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/htc/customization/BaseXmlHandler;->characters([CII)V

    .line 135
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "fullName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 144
    :cond_0
    const-string v1, "module"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    invoke-virtual {v2}, Lcom/htc/customization/ModuleReader;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    invoke-virtual {v1}, Lcom/htc/customization/ModuleReader;->dumpValues()V

    .line 189
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->reset()V

    goto :goto_0

    .line 147
    :cond_2
    const-string v1, "item"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 148
    const-string v1, "boolean"

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/ModuleReader;->handleBoolean(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_3
    const-string v1, "integer"

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/ModuleReader;->handleInteger(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_4
    const-string v1, "string"

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 153
    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/ModuleReader;->handleString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :cond_5
    const-string v1, "byte"

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 155
    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/ModuleReader;->handleByte(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 156
    :cond_6
    const-string v1, "integer-array"

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mSetType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTempIntVals:Ljava/util/Vector;

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_2
    const-string v1, "CustomizationCIDLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add int-array item, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTempIntVals:Ljava/util/Vector;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 165
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const-string v1, "string-array"

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mSetType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 167
    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTempStrVals:Ljava/util/Vector;

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v1, "CustomizationCIDLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add string-array item, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 171
    :cond_8
    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/customization/ModuleReader;->handleString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 173
    :cond_9
    const-string v1, "set"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 174
    const-string v1, "integer-array"

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mSetType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 175
    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v3, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mSetName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTempIntVals:Ljava/util/Vector;

    iget-object v4, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTempIntVals:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    invoke-virtual {v2, v3, v1}, Lcom/htc/customization/ModuleReader;->handleIntArray(Ljava/lang/String;[Ljava/lang/Integer;)V

    .line 183
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->clearForArrayType()V

    goto/16 :goto_1

    .line 178
    :cond_b
    const-string v1, "string-array"

    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mSetType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 179
    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v3, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mSetName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTempStrVals:Ljava/util/Vector;

    iget-object v4, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTempStrVals:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/htc/customization/ModuleReader;->handleStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    .line 184
    :cond_c
    const-string v1, "category"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    .line 186
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCategory:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "fullName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 84
    const-string v2, "category"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "name":Ljava/lang/String;
    const-string v2, "Parsing tag %s name = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "log":Ljava/lang/String;
    const-string v2, "CustomizationCIDLoader"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v2, "ACC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->this$0:Lcom/htc/customization/CustomizationCIDLoader;

    # getter for: Lcom/htc/customization/CustomizationCIDLoader;->mAppSettings:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/customization/CustomizationCIDLoader;->access$000(Lcom/htc/customization/CustomizationCIDLoader;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    .line 92
    const-string v2, "app"

    iput-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCategory:Ljava/lang/String;

    .line 127
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v0    # "log":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    .line 103
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCategory:Ljava/lang/String;

    goto :goto_0

    .line 108
    .end local v0    # "log":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mTarget:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 109
    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .restart local v1    # "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->this$0:Lcom/htc/customization/CustomizationCIDLoader;

    invoke-virtual {v2, v1}, Lcom/htc/customization/CustomizationCIDLoader;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    const-string v2, "module"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    new-instance v2, Lcom/htc/customization/ModuleReader;

    invoke-direct {v2}, Lcom/htc/customization/ModuleReader;-><init>()V

    iput-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    .line 113
    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    invoke-virtual {v2, v1}, Lcom/htc/customization/ModuleReader;->setName(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    iget-object v3, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/customization/ModuleReader;->setCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_3
    const-string v2, "function"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    invoke-virtual {v2, v1}, Lcom/htc/customization/ModuleReader;->setFunction(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_4
    const-string v2, "set"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    iget-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mCurrentModule:Lcom/htc/customization/ModuleReader;

    invoke-virtual {v2, v1}, Lcom/htc/customization/ModuleReader;->setSet(Ljava/lang/String;)V

    .line 120
    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mSetName:Ljava/lang/String;

    .line 121
    const-string v2, "type"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mSetType:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_5
    const-string v2, "item"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const-string v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mItemName:Ljava/lang/String;

    .line 124
    const-string v2, "type"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/customization/CustomizationCIDLoader$XmlContentHandler;->mItemType:Ljava/lang/String;

    goto :goto_0
.end method
