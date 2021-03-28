lbl_80078AC0:
/* 80078AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078AC4  7C 08 02 A6 */	mflr r0
/* 80078AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078ACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078AD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80078AD4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80078AD8  7C 9F 23 78 */	mr r31, r4
/* 80078ADC  41 82 00 78 */	beq lbl_80078B54
/* 80078AE0  3C 60 80 3B */	lis r3, __vt__11dBgS_SphChk@ha
/* 80078AE4  38 63 B9 C8 */	addi r3, r3, __vt__11dBgS_SphChk@l
/* 80078AE8  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80078AEC  38 03 00 0C */	addi r0, r3, 0xc
/* 80078AF0  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80078AF4  38 03 00 18 */	addi r0, r3, 0x18
/* 80078AF8  90 1E 00 34 */	stw r0, 0x34(r30)
/* 80078AFC  38 03 00 24 */	addi r0, r3, 0x24
/* 80078B00  90 1E 00 38 */	stw r0, 0x38(r30)
/* 80078B04  38 03 00 30 */	addi r0, r3, 0x30
/* 80078B08  90 1E 00 48 */	stw r0, 0x48(r30)
/* 80078B0C  38 7E 00 38 */	addi r3, r30, 0x38
/* 80078B10  38 80 00 00 */	li r4, 0
/* 80078B14  4B FF E9 D5 */	bl __dt__8dBgS_ChkFv
/* 80078B18  38 7E 00 24 */	addi r3, r30, 0x24
/* 80078B1C  38 80 00 00 */	li r4, 0
/* 80078B20  48 1E F0 51 */	bl __dt__8cBgS_ChkFv
/* 80078B24  38 7E 00 14 */	addi r3, r30, 0x14
/* 80078B28  38 80 00 00 */	li r4, 0
/* 80078B2C  48 1E F5 85 */	bl __dt__13cBgS_PolyInfoFv
/* 80078B30  28 1E 00 00 */	cmplwi r30, 0
/* 80078B34  41 82 00 10 */	beq lbl_80078B44
/* 80078B38  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha
/* 80078B3C  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80078B40  90 1E 00 10 */	stw r0, 0x10(r30)
lbl_80078B44:
/* 80078B44  7F E0 07 35 */	extsh. r0, r31
/* 80078B48  40 81 00 0C */	ble lbl_80078B54
/* 80078B4C  7F C3 F3 78 */	mr r3, r30
/* 80078B50  48 25 61 ED */	bl __dl__FPv
lbl_80078B54:
/* 80078B54  7F C3 F3 78 */	mr r3, r30
/* 80078B58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078B5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80078B60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078B64  7C 08 03 A6 */	mtlr r0
/* 80078B68  38 21 00 10 */	addi r1, r1, 0x10
/* 80078B6C  4E 80 00 20 */	blr 
