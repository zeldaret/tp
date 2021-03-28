lbl_80BB3690:
/* 80BB3690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB3694  7C 08 02 A6 */	mflr r0
/* 80BB3698  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB369C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB36A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB36A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BB36A8  7C 9F 23 78 */	mr r31, r4
/* 80BB36AC  41 82 00 40 */	beq lbl_80BB36EC
/* 80BB36B0  3C 80 80 BB */	lis r4, __vt__14dBgS_ObjGndChk@ha
/* 80BB36B4  38 84 3E 80 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l
/* 80BB36B8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BB36BC  38 04 00 0C */	addi r0, r4, 0xc
/* 80BB36C0  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80BB36C4  38 04 00 18 */	addi r0, r4, 0x18
/* 80BB36C8  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80BB36CC  38 04 00 24 */	addi r0, r4, 0x24
/* 80BB36D0  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80BB36D4  38 80 00 00 */	li r4, 0
/* 80BB36D8  4B 4C 3F 18 */	b __dt__11dBgS_GndChkFv
/* 80BB36DC  7F E0 07 35 */	extsh. r0, r31
/* 80BB36E0  40 81 00 0C */	ble lbl_80BB36EC
/* 80BB36E4  7F C3 F3 78 */	mr r3, r30
/* 80BB36E8  4B 71 B6 54 */	b __dl__FPv
lbl_80BB36EC:
/* 80BB36EC  7F C3 F3 78 */	mr r3, r30
/* 80BB36F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB36F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB36F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB36FC  7C 08 03 A6 */	mtlr r0
/* 80BB3700  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB3704  4E 80 00 20 */	blr 
