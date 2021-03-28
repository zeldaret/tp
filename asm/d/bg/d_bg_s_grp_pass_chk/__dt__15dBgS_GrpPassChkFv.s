lbl_80077BC4:
/* 80077BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077BC8  7C 08 02 A6 */	mflr r0
/* 80077BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077BD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077BD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80077BD8  41 82 00 30 */	beq lbl_80077C08
/* 80077BDC  3C 60 80 3B */	lis r3, __vt__15dBgS_GrpPassChk@ha
/* 80077BE0  38 03 B7 A8 */	addi r0, r3, __vt__15dBgS_GrpPassChk@l
/* 80077BE4  90 1F 00 00 */	stw r0, 0(r31)
/* 80077BE8  41 82 00 10 */	beq lbl_80077BF8
/* 80077BEC  3C 60 80 3B */	lis r3, __vt__15cBgS_GrpPassChk@ha
/* 80077BF0  38 03 B7 B4 */	addi r0, r3, __vt__15cBgS_GrpPassChk@l
/* 80077BF4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80077BF8:
/* 80077BF8  7C 80 07 35 */	extsh. r0, r4
/* 80077BFC  40 81 00 0C */	ble lbl_80077C08
/* 80077C00  7F E3 FB 78 */	mr r3, r31
/* 80077C04  48 25 71 39 */	bl __dl__FPv
lbl_80077C08:
/* 80077C08  7F E3 FB 78 */	mr r3, r31
/* 80077C0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80077C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80077C14  7C 08 03 A6 */	mtlr r0
/* 80077C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80077C1C  4E 80 00 20 */	blr 
