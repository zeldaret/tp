lbl_80A68788:
/* 80A68788  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6878C  7C 08 02 A6 */	mflr r0
/* 80A68790  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A68794  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A68798  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6879C  41 82 00 1C */	beq lbl_80A687B8
/* 80A687A0  3C A0 80 A7 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80A687A4  38 05 98 E0 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80A687A8  90 1F 00 00 */	stw r0, 0(r31)
/* 80A687AC  7C 80 07 35 */	extsh. r0, r4
/* 80A687B0  40 81 00 08 */	ble lbl_80A687B8
/* 80A687B4  4B 86 65 88 */	b __dl__FPv
lbl_80A687B8:
/* 80A687B8  7F E3 FB 78 */	mr r3, r31
/* 80A687BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A687C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A687C4  7C 08 03 A6 */	mtlr r0
/* 80A687C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A687CC  4E 80 00 20 */	blr 
