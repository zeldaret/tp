lbl_8059E9B8:
/* 8059E9B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059E9BC  7C 08 02 A6 */	mflr r0
/* 8059E9C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059E9C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059E9C8  7C 7F 1B 78 */	mr r31, r3
/* 8059E9CC  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 8059E9D0  2C 00 00 61 */	cmpwi r0, 0x61
/* 8059E9D4  41 82 01 40 */	beq lbl_8059EB14
/* 8059E9D8  40 80 00 78 */	bge lbl_8059EA50
/* 8059E9DC  2C 00 00 30 */	cmpwi r0, 0x30
/* 8059E9E0  41 82 01 E8 */	beq lbl_8059EBC8
/* 8059E9E4  40 80 00 3C */	bge lbl_8059EA20
/* 8059E9E8  2C 00 00 2B */	cmpwi r0, 0x2b
/* 8059E9EC  41 82 01 64 */	beq lbl_8059EB50
/* 8059E9F0  40 80 00 24 */	bge lbl_8059EA14
/* 8059E9F4  2C 00 00 0E */	cmpwi r0, 0xe
/* 8059E9F8  40 80 00 10 */	bge lbl_8059EA08
/* 8059E9FC  2C 00 00 0A */	cmpwi r0, 0xa
/* 8059EA00  40 80 01 68 */	bge lbl_8059EB68
/* 8059EA04  48 00 01 D0 */	b lbl_8059EBD4
lbl_8059EA08:
/* 8059EA08  2C 00 00 11 */	cmpwi r0, 0x11
/* 8059EA0C  40 80 01 C8 */	bge lbl_8059EBD4
/* 8059EA10  48 00 01 34 */	b lbl_8059EB44
lbl_8059EA14:
/* 8059EA14  2C 00 00 2D */	cmpwi r0, 0x2d
/* 8059EA18  40 80 01 BC */	bge lbl_8059EBD4
/* 8059EA1C  48 00 01 40 */	b lbl_8059EB5C
lbl_8059EA20:
/* 8059EA20  2C 00 00 4B */	cmpwi r0, 0x4b
/* 8059EA24  41 82 01 8C */	beq lbl_8059EBB0
/* 8059EA28  40 80 00 10 */	bge lbl_8059EA38
/* 8059EA2C  2C 00 00 3E */	cmpwi r0, 0x3e
/* 8059EA30  41 82 01 8C */	beq lbl_8059EBBC
/* 8059EA34  48 00 01 A0 */	b lbl_8059EBD4
lbl_8059EA38:
/* 8059EA38  2C 00 00 4F */	cmpwi r0, 0x4f
/* 8059EA3C  41 82 01 5C */	beq lbl_8059EB98
/* 8059EA40  41 80 01 94 */	blt lbl_8059EBD4
/* 8059EA44  2C 00 00 52 */	cmpwi r0, 0x52
/* 8059EA48  40 80 01 8C */	bge lbl_8059EBD4
/* 8059EA4C  48 00 01 40 */	b lbl_8059EB8C
lbl_8059EA50:
/* 8059EA50  2C 00 00 71 */	cmpwi r0, 0x71
/* 8059EA54  41 82 01 20 */	beq lbl_8059EB74
/* 8059EA58  40 80 00 34 */	bge lbl_8059EA8C
/* 8059EA5C  2C 00 00 65 */	cmpwi r0, 0x65
/* 8059EA60  41 82 00 A8 */	beq lbl_8059EB08
/* 8059EA64  40 80 00 14 */	bge lbl_8059EA78
/* 8059EA68  2C 00 00 63 */	cmpwi r0, 0x63
/* 8059EA6C  41 82 00 C0 */	beq lbl_8059EB2C
/* 8059EA70  40 80 00 8C */	bge lbl_8059EAFC
/* 8059EA74  48 00 00 AC */	b lbl_8059EB20
lbl_8059EA78:
/* 8059EA78  2C 00 00 70 */	cmpwi r0, 0x70
/* 8059EA7C  40 80 00 EC */	bge lbl_8059EB68
/* 8059EA80  2C 00 00 67 */	cmpwi r0, 0x67
/* 8059EA84  40 80 01 50 */	bge lbl_8059EBD4
/* 8059EA88  48 00 00 68 */	b lbl_8059EAF0
lbl_8059EA8C:
/* 8059EA8C  2C 00 00 76 */	cmpwi r0, 0x76
/* 8059EA90  41 82 01 14 */	beq lbl_8059EBA4
/* 8059EA94  40 80 00 18 */	bge lbl_8059EAAC
/* 8059EA98  2C 00 00 75 */	cmpwi r0, 0x75
/* 8059EA9C  40 80 00 9C */	bge lbl_8059EB38
/* 8059EAA0  2C 00 00 73 */	cmpwi r0, 0x73
/* 8059EAA4  40 80 01 30 */	bge lbl_8059EBD4
/* 8059EAA8  48 00 00 D8 */	b lbl_8059EB80
lbl_8059EAAC:
/* 8059EAAC  2C 00 00 FF */	cmpwi r0, 0xff
/* 8059EAB0  41 82 00 08 */	beq lbl_8059EAB8
/* 8059EAB4  48 00 01 20 */	b lbl_8059EBD4
lbl_8059EAB8:
/* 8059EAB8  3C 60 80 5A */	lis r3, d_a_shop_item__stringBase0@ha /* 0x8059F48C@ha */
/* 8059EABC  38 63 F4 8C */	addi r3, r3, d_a_shop_item__stringBase0@l /* 0x8059F48C@l */
/* 8059EAC0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8059EAC4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8059EAC8  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 8059EACC  4B DC 9E C9 */	bl strcmp
/* 8059EAD0  2C 03 00 00 */	cmpwi r3, 0
/* 8059EAD4  40 82 00 10 */	bne lbl_8059EAE4
/* 8059EAD8  38 00 00 14 */	li r0, 0x14
/* 8059EADC  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EAE0  48 00 00 FC */	b lbl_8059EBDC
lbl_8059EAE4:
/* 8059EAE4  38 00 00 00 */	li r0, 0
/* 8059EAE8  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EAEC  48 00 00 F0 */	b lbl_8059EBDC
lbl_8059EAF0:
/* 8059EAF0  38 00 00 01 */	li r0, 1
/* 8059EAF4  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EAF8  48 00 00 E4 */	b lbl_8059EBDC
lbl_8059EAFC:
/* 8059EAFC  38 00 00 03 */	li r0, 3
/* 8059EB00  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EB04  48 00 00 D8 */	b lbl_8059EBDC
lbl_8059EB08:
/* 8059EB08  38 00 00 04 */	li r0, 4
/* 8059EB0C  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EB10  48 00 00 CC */	b lbl_8059EBDC
lbl_8059EB14:
/* 8059EB14  38 00 00 02 */	li r0, 2
/* 8059EB18  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EB1C  48 00 00 C0 */	b lbl_8059EBDC
lbl_8059EB20:
/* 8059EB20  38 00 00 15 */	li r0, 0x15
/* 8059EB24  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EB28  48 00 00 B4 */	b lbl_8059EBDC
lbl_8059EB2C:
/* 8059EB2C  38 00 00 11 */	li r0, 0x11
/* 8059EB30  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EB34  48 00 00 A8 */	b lbl_8059EBDC
lbl_8059EB38:
/* 8059EB38  38 00 00 16 */	li r0, 0x16
/* 8059EB3C  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EB40  48 00 00 9C */	b lbl_8059EBDC
lbl_8059EB44:
/* 8059EB44  38 00 00 05 */	li r0, 5
/* 8059EB48  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EB4C  48 00 00 90 */	b lbl_8059EBDC
lbl_8059EB50:
/* 8059EB50  38 00 00 06 */	li r0, 6
/* 8059EB54  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EB58  48 00 00 84 */	b lbl_8059EBDC
lbl_8059EB5C:
/* 8059EB5C  38 00 00 07 */	li r0, 7
/* 8059EB60  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EB64  48 00 00 78 */	b lbl_8059EBDC
lbl_8059EB68:
/* 8059EB68  38 00 00 08 */	li r0, 8
/* 8059EB6C  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EB70  48 00 00 6C */	b lbl_8059EBDC
lbl_8059EB74:
/* 8059EB74  38 00 00 09 */	li r0, 9
/* 8059EB78  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EB7C  48 00 00 60 */	b lbl_8059EBDC
lbl_8059EB80:
/* 8059EB80  38 00 00 0A */	li r0, 0xa
/* 8059EB84  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EB88  48 00 00 54 */	b lbl_8059EBDC
lbl_8059EB8C:
/* 8059EB8C  38 00 00 0B */	li r0, 0xb
/* 8059EB90  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EB94  48 00 00 48 */	b lbl_8059EBDC
lbl_8059EB98:
/* 8059EB98  38 00 00 0C */	li r0, 0xc
/* 8059EB9C  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EBA0  48 00 00 3C */	b lbl_8059EBDC
lbl_8059EBA4:
/* 8059EBA4  38 00 00 0F */	li r0, 0xf
/* 8059EBA8  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EBAC  48 00 00 30 */	b lbl_8059EBDC
lbl_8059EBB0:
/* 8059EBB0  38 00 00 10 */	li r0, 0x10
/* 8059EBB4  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EBB8  48 00 00 24 */	b lbl_8059EBDC
lbl_8059EBBC:
/* 8059EBBC  38 00 00 12 */	li r0, 0x12
/* 8059EBC0  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EBC4  48 00 00 18 */	b lbl_8059EBDC
lbl_8059EBC8:
/* 8059EBC8  38 00 00 13 */	li r0, 0x13
/* 8059EBCC  98 1F 09 64 */	stb r0, 0x964(r31)
/* 8059EBD0  48 00 00 0C */	b lbl_8059EBDC
lbl_8059EBD4:
/* 8059EBD4  38 60 00 00 */	li r3, 0
/* 8059EBD8  48 00 00 18 */	b lbl_8059EBF0
lbl_8059EBDC:
/* 8059EBDC  88 1F 09 64 */	lbz r0, 0x964(r31)
/* 8059EBE0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8059EBE4  3C 60 80 38 */	lis r3, mData__12daShopItem_c@ha /* 0x803792E8@ha */
/* 8059EBE8  38 63 92 E8 */	addi r3, r3, mData__12daShopItem_c@l /* 0x803792E8@l */
/* 8059EBEC  7C 63 00 2E */	lwzx r3, r3, r0
lbl_8059EBF0:
/* 8059EBF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059EBF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059EBF8  7C 08 03 A6 */	mtlr r0
/* 8059EBFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8059EC00  4E 80 00 20 */	blr 
