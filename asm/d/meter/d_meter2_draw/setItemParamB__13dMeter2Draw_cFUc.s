lbl_8021B810:
/* 8021B810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021B814  7C 08 02 A6 */	mflr r0
/* 8021B818  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021B81C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021B820  93 C1 00 08 */	stw r30, 8(r1)
/* 8021B824  7C 7E 1B 78 */	mr r30, r3
/* 8021B828  7C 9F 23 78 */	mr r31, r4
/* 8021B82C  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8021B830  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8021B834  88 03 04 29 */	lbz r0, 0x429(r3)
/* 8021B838  28 00 00 00 */	cmplwi r0, 0
/* 8021B83C  41 82 00 40 */	beq lbl_8021B87C
/* 8021B840  C0 03 01 84 */	lfs f0, 0x184(r3)
/* 8021B844  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8021B848  C0 03 01 90 */	lfs f0, 0x190(r3)
/* 8021B84C  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8021B850  C0 03 01 A8 */	lfs f0, 0x1a8(r3)
/* 8021B854  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 8021B858  C0 03 01 9C */	lfs f0, 0x19c(r3)
/* 8021B85C  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 8021B860  C0 03 01 FC */	lfs f0, 0x1fc(r3)
/* 8021B864  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8021B868  C0 03 02 0C */	lfs f0, 0x20c(r3)
/* 8021B86C  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8021B870  C0 03 02 1C */	lfs f0, 0x21c(r3)
/* 8021B874  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8021B878  48 00 02 DC */	b lbl_8021BB54
lbl_8021B87C:
/* 8021B87C  7F E3 FB 78 */	mr r3, r31
/* 8021B880  4B E7 FE 89 */	bl isBottleItem__FUc
/* 8021B884  2C 03 00 00 */	cmpwi r3, 0
/* 8021B888  41 82 00 40 */	beq lbl_8021B8C8
/* 8021B88C  C0 02 AF 54 */	lfs f0, lit_9089(r2)
/* 8021B890  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8021B894  C0 02 AF 58 */	lfs f0, lit_9090(r2)
/* 8021B898  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8021B89C  C0 02 AE F0 */	lfs f0, lit_8994(r2)
/* 8021B8A0  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 8021B8A4  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021B8A8  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 8021B8AC  C0 02 AF 28 */	lfs f0, lit_9025(r2)
/* 8021B8B0  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8021B8B4  C0 02 AF 40 */	lfs f0, lit_9048(r2)
/* 8021B8B8  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8021B8BC  C0 02 AF 44 */	lfs f0, lit_9049(r2)
/* 8021B8C0  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8021B8C4  48 00 02 90 */	b lbl_8021BB54
lbl_8021B8C8:
/* 8021B8C8  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8021B8CC  38 03 FF D3 */	addi r0, r3, -45
/* 8021B8D0  28 00 00 63 */	cmplwi r0, 0x63
/* 8021B8D4  41 81 02 40 */	bgt lbl_8021BB14
/* 8021B8D8  3C 60 80 3C */	lis r3, lit_9106@ha
/* 8021B8DC  38 63 F5 C0 */	addi r3, r3, lit_9106@l
/* 8021B8E0  54 00 10 3A */	slwi r0, r0, 2
/* 8021B8E4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8021B8E8  7C 09 03 A6 */	mtctr r0
/* 8021B8EC  4E 80 04 20 */	bctr 
/* 8021B8F0  C0 02 AF 54 */	lfs f0, lit_9089(r2)
/* 8021B8F4  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8021B8F8  C0 02 AF 58 */	lfs f0, lit_9090(r2)
/* 8021B8FC  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8021B900  C0 02 AE F0 */	lfs f0, lit_8994(r2)
/* 8021B904  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 8021B908  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021B90C  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 8021B910  C0 02 AF 28 */	lfs f0, lit_9025(r2)
/* 8021B914  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8021B918  C0 02 AF 40 */	lfs f0, lit_9048(r2)
/* 8021B91C  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8021B920  C0 02 AF 44 */	lfs f0, lit_9049(r2)
/* 8021B924  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8021B928  48 00 02 2C */	b lbl_8021BB54
/* 8021B92C  C0 02 AF 5C */	lfs f0, lit_9091(r2)
/* 8021B930  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8021B934  C0 02 AF 60 */	lfs f0, lit_9092(r2)
/* 8021B938  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8021B93C  C0 02 AF 3C */	lfs f0, lit_9047(r2)
/* 8021B940  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 8021B944  C0 02 AE 88 */	lfs f0, lit_4184(r2)
/* 8021B948  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 8021B94C  C0 02 AF 28 */	lfs f0, lit_9025(r2)
/* 8021B950  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8021B954  C0 02 AF 40 */	lfs f0, lit_9048(r2)
/* 8021B958  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8021B95C  C0 02 AF 44 */	lfs f0, lit_9049(r2)
/* 8021B960  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8021B964  48 00 01 F0 */	b lbl_8021BB54
/* 8021B968  C0 02 AF 64 */	lfs f0, lit_9093(r2)
/* 8021B96C  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8021B970  C0 02 AF 68 */	lfs f0, lit_9094(r2)
/* 8021B974  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8021B978  C0 02 AF 3C */	lfs f0, lit_9047(r2)
/* 8021B97C  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 8021B980  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021B984  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 8021B988  C0 02 AF 28 */	lfs f0, lit_9025(r2)
/* 8021B98C  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8021B990  C0 02 AF 40 */	lfs f0, lit_9048(r2)
/* 8021B994  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8021B998  C0 02 AF 44 */	lfs f0, lit_9049(r2)
/* 8021B99C  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8021B9A0  48 00 01 B4 */	b lbl_8021BB54
/* 8021B9A4  C0 02 AF 6C */	lfs f0, lit_9095(r2)
/* 8021B9A8  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8021B9AC  C0 02 AF 70 */	lfs f0, lit_9096(r2)
/* 8021B9B0  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8021B9B4  C0 02 AF 3C */	lfs f0, lit_9047(r2)
/* 8021B9B8  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 8021B9BC  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021B9C0  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 8021B9C4  C0 02 AF 28 */	lfs f0, lit_9025(r2)
/* 8021B9C8  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8021B9CC  C0 02 AF 40 */	lfs f0, lit_9048(r2)
/* 8021B9D0  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8021B9D4  C0 02 AF 48 */	lfs f0, lit_9050(r2)
/* 8021B9D8  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8021B9DC  48 00 01 78 */	b lbl_8021BB54
/* 8021B9E0  C0 02 AF 74 */	lfs f0, lit_9097(r2)
/* 8021B9E4  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8021B9E8  C0 02 AF 70 */	lfs f0, lit_9096(r2)
/* 8021B9EC  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8021B9F0  C0 02 AE F0 */	lfs f0, lit_8994(r2)
/* 8021B9F4  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 8021B9F8  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021B9FC  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 8021BA00  C0 02 AF 4C */	lfs f0, lit_9051(r2)
/* 8021BA04  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8021BA08  C0 02 AF 40 */	lfs f0, lit_9048(r2)
/* 8021BA0C  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8021BA10  C0 02 AF 48 */	lfs f0, lit_9050(r2)
/* 8021BA14  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8021BA18  48 00 01 3C */	b lbl_8021BB54
/* 8021BA1C  C0 02 AF 78 */	lfs f0, lit_9098(r2)
/* 8021BA20  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8021BA24  C0 02 AF 70 */	lfs f0, lit_9096(r2)
/* 8021BA28  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8021BA2C  C0 02 AE F0 */	lfs f0, lit_8994(r2)
/* 8021BA30  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 8021BA34  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021BA38  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 8021BA3C  C0 02 AF 4C */	lfs f0, lit_9051(r2)
/* 8021BA40  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8021BA44  C0 02 AF 40 */	lfs f0, lit_9048(r2)
/* 8021BA48  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8021BA4C  C0 02 AF 48 */	lfs f0, lit_9050(r2)
/* 8021BA50  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8021BA54  48 00 01 00 */	b lbl_8021BB54
/* 8021BA58  C0 02 AF 7C */	lfs f0, lit_9099(r2)
/* 8021BA5C  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8021BA60  C0 02 AF 70 */	lfs f0, lit_9096(r2)
/* 8021BA64  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8021BA68  C0 02 AE F0 */	lfs f0, lit_8994(r2)
/* 8021BA6C  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 8021BA70  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021BA74  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 8021BA78  C0 02 AF 80 */	lfs f0, lit_9100(r2)
/* 8021BA7C  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8021BA80  C0 02 AF 84 */	lfs f0, lit_9101(r2)
/* 8021BA84  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8021BA88  C0 02 AF 48 */	lfs f0, lit_9050(r2)
/* 8021BA8C  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8021BA90  48 00 00 C4 */	b lbl_8021BB54
/* 8021BA94  C0 02 AF 88 */	lfs f0, lit_9102(r2)
/* 8021BA98  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8021BA9C  C0 02 AF 8C */	lfs f0, lit_9103(r2)
/* 8021BAA0  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8021BAA4  C0 02 AE F0 */	lfs f0, lit_8994(r2)
/* 8021BAA8  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 8021BAAC  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021BAB0  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 8021BAB4  C0 02 AF 4C */	lfs f0, lit_9051(r2)
/* 8021BAB8  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8021BABC  C0 02 AF 40 */	lfs f0, lit_9048(r2)
/* 8021BAC0  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8021BAC4  C0 02 AF 48 */	lfs f0, lit_9050(r2)
/* 8021BAC8  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8021BACC  48 00 00 88 */	b lbl_8021BB54
/* 8021BAD0  C0 02 AF 90 */	lfs f0, lit_9104(r2)
/* 8021BAD4  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8021BAD8  C0 02 AF 94 */	lfs f0, lit_9105(r2)
/* 8021BADC  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8021BAE0  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8021BAE4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8021BAE8  C0 03 01 A8 */	lfs f0, 0x1a8(r3)
/* 8021BAEC  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 8021BAF0  C0 03 01 9C */	lfs f0, 0x19c(r3)
/* 8021BAF4  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 8021BAF8  C0 03 01 FC */	lfs f0, 0x1fc(r3)
/* 8021BAFC  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8021BB00  C0 03 02 0C */	lfs f0, 0x20c(r3)
/* 8021BB04  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8021BB08  C0 03 02 1C */	lfs f0, 0x21c(r3)
/* 8021BB0C  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8021BB10  48 00 00 44 */	b lbl_8021BB54
lbl_8021BB14:
/* 8021BB14  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 8021BB18  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 8021BB1C  C0 03 01 84 */	lfs f0, 0x184(r3)
/* 8021BB20  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8021BB24  C0 03 01 90 */	lfs f0, 0x190(r3)
/* 8021BB28  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8021BB2C  C0 03 01 A8 */	lfs f0, 0x1a8(r3)
/* 8021BB30  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 8021BB34  C0 03 01 9C */	lfs f0, 0x19c(r3)
/* 8021BB38  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 8021BB3C  C0 03 01 FC */	lfs f0, 0x1fc(r3)
/* 8021BB40  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 8021BB44  C0 03 02 0C */	lfs f0, 0x20c(r3)
/* 8021BB48  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8021BB4C  C0 03 02 1C */	lfs f0, 0x21c(r3)
/* 8021BB50  D0 1E 00 70 */	stfs f0, 0x70(r30)
lbl_8021BB54:
/* 8021BB54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021BB58  83 C1 00 08 */	lwz r30, 8(r1)
/* 8021BB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021BB60  7C 08 03 A6 */	mtlr r0
/* 8021BB64  38 21 00 10 */	addi r1, r1, 0x10
/* 8021BB68  4E 80 00 20 */	blr 
