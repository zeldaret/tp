lbl_80CCDE3C:
/* 80CCDE3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCDE40  7C 08 02 A6 */	mflr r0
/* 80CCDE44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCDE48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCDE4C  7C 7F 1B 78 */	mr r31, r3
/* 80CCDE50  88 03 04 BA */	lbz r0, 0x4ba(r3)
/* 80CCDE54  7C 06 07 74 */	extsb r6, r0
/* 80CCDE58  3C A0 80 45 */	lis r5, struct_80450D64+0x0@ha
/* 80CCDE5C  88 05 0D 64 */	lbz r0, struct_80450D64+0x0@l(r5)
/* 80CCDE60  7C 00 07 74 */	extsb r0, r0
/* 80CCDE64  7C 06 00 00 */	cmpw r6, r0
/* 80CCDE68  40 82 00 74 */	bne lbl_80CCDEDC
/* 80CCDE6C  38 1F 05 6C */	addi r0, r31, 0x56c
/* 80CCDE70  90 04 00 00 */	stw r0, 0(r4)
/* 80CCDE74  48 00 01 6D */	bl setBaseMtx__14daObj_Sekizo_cFv
/* 80CCDE78  88 1F 05 B2 */	lbz r0, 0x5b2(r31)
/* 80CCDE7C  28 00 00 00 */	cmplwi r0, 0
/* 80CCDE80  41 82 00 30 */	beq lbl_80CCDEB0
/* 80CCDE84  88 1F 05 B1 */	lbz r0, 0x5b1(r31)
/* 80CCDE88  28 00 00 00 */	cmplwi r0, 0
/* 80CCDE8C  41 82 00 50 */	beq lbl_80CCDEDC
/* 80CCDE90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCDE94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCDE98  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CCDE9C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80CCDEA0  4B 3A 63 B0 */	b Release__4cBgSFP9dBgW_Base
/* 80CCDEA4  38 00 00 00 */	li r0, 0
/* 80CCDEA8  98 1F 05 B1 */	stb r0, 0x5b1(r31)
/* 80CCDEAC  48 00 00 30 */	b lbl_80CCDEDC
lbl_80CCDEB0:
/* 80CCDEB0  88 1F 05 B1 */	lbz r0, 0x5b1(r31)
/* 80CCDEB4  28 00 00 00 */	cmplwi r0, 0
/* 80CCDEB8  40 82 00 24 */	bne lbl_80CCDEDC
/* 80CCDEBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCDEC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCDEC4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CCDEC8  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80CCDECC  7F E5 FB 78 */	mr r5, r31
/* 80CCDED0  4B 3A 6B 38 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80CCDED4  38 00 00 01 */	li r0, 1
/* 80CCDED8  98 1F 05 B1 */	stb r0, 0x5b1(r31)
lbl_80CCDEDC:
/* 80CCDEDC  38 60 00 01 */	li r3, 1
/* 80CCDEE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCDEE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCDEE8  7C 08 03 A6 */	mtlr r0
/* 80CCDEEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCDEF0  4E 80 00 20 */	blr 
