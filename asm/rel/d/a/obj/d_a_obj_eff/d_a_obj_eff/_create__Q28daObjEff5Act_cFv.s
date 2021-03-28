lbl_8057C9D8:
/* 8057C9D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8057C9DC  7C 08 02 A6 */	mflr r0
/* 8057C9E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8057C9E4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8057C9E8  7C 7F 1B 78 */	mr r31, r3
/* 8057C9EC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8057C9F0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8057C9F4  40 82 00 1C */	bne lbl_8057CA10
/* 8057C9F8  28 1F 00 00 */	cmplwi r31, 0
/* 8057C9FC  41 82 00 08 */	beq lbl_8057CA04
/* 8057CA00  4B A9 C1 64 */	b __ct__10fopAc_ac_cFv
lbl_8057CA04:
/* 8057CA04  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8057CA08  60 00 00 08 */	ori r0, r0, 8
/* 8057CA0C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8057CA10:
/* 8057CA10  7F E3 FB 78 */	mr r3, r31
/* 8057CA14  38 80 00 08 */	li r4, 8
/* 8057CA18  38 A0 00 00 */	li r5, 0
/* 8057CA1C  48 00 00 B9 */	bl func_8057CAD4
/* 8057CA20  2C 03 00 03 */	cmpwi r3, 3
/* 8057CA24  40 82 00 58 */	bne lbl_8057CA7C
/* 8057CA28  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8057CA2C  7C 04 07 74 */	extsb r4, r0
/* 8057CA30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057CA34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057CA38  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8057CA3C  38 00 00 00 */	li r0, 0
/* 8057CA40  90 01 00 08 */	stw r0, 8(r1)
/* 8057CA44  90 81 00 0C */	stw r4, 0xc(r1)
/* 8057CA48  90 01 00 10 */	stw r0, 0x10(r1)
/* 8057CA4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057CA50  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 8057CA54  91 21 00 18 */	stw r9, 0x18(r1)
/* 8057CA58  38 80 00 00 */	li r4, 0
/* 8057CA5C  38 A0 00 E7 */	li r5, 0xe7
/* 8057CA60  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 8057CA64  38 E0 00 00 */	li r7, 0
/* 8057CA68  39 00 00 00 */	li r8, 0
/* 8057CA6C  39 40 00 37 */	li r10, 0x37
/* 8057CA70  3D 60 80 58 */	lis r11, lit_3648@ha
/* 8057CA74  C0 2B CA F8 */	lfs f1, lit_3648@l(r11)
/* 8057CA78  4B AD 00 18 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_8057CA7C:
/* 8057CA7C  38 60 00 05 */	li r3, 5
/* 8057CA80  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8057CA84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8057CA88  7C 08 03 A6 */	mtlr r0
/* 8057CA8C  38 21 00 30 */	addi r1, r1, 0x30
/* 8057CA90  4E 80 00 20 */	blr 
