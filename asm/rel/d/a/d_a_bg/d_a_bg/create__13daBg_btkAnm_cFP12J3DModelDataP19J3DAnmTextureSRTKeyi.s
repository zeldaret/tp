lbl_80457F34:
/* 80457F34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80457F38  7C 08 02 A6 */	mflr r0
/* 80457F3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80457F40  39 61 00 20 */	addi r11, r1, 0x20
/* 80457F44  4B F0 A2 91 */	bl _savegpr_27
/* 80457F48  7C 7B 1B 78 */	mr r27, r3
/* 80457F4C  7C 9F 23 78 */	mr r31, r4
/* 80457F50  7C BD 2B 78 */	mr r29, r5
/* 80457F54  7C DC 33 78 */	mr r28, r6
/* 80457F58  38 60 00 18 */	li r3, 0x18
/* 80457F5C  4B E7 6C F1 */	bl __nw__FUl
/* 80457F60  7C 7E 1B 79 */	or. r30, r3, r3
/* 80457F64  41 82 00 20 */	beq lbl_80457F84
/* 80457F68  3C 80 80 46 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x804595A0@ha */
/* 80457F6C  38 04 95 A0 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x804595A0@l */
/* 80457F70  90 1E 00 00 */	stw r0, 0(r30)
/* 80457F74  38 80 00 00 */	li r4, 0
/* 80457F78  4B ED 04 85 */	bl init__12J3DFrameCtrlFs
/* 80457F7C  38 00 00 00 */	li r0, 0
/* 80457F80  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80457F84:
/* 80457F84  93 DB 00 00 */	stw r30, 0(r27)
/* 80457F88  80 7B 00 00 */	lwz r3, 0(r27)
/* 80457F8C  28 03 00 00 */	cmplwi r3, 0
/* 80457F90  40 82 00 0C */	bne lbl_80457F9C
/* 80457F94  38 60 00 00 */	li r3, 0
/* 80457F98  48 00 00 90 */	b lbl_80458028
lbl_80457F9C:
/* 80457F9C  38 9F 00 58 */	addi r4, r31, 0x58
/* 80457FA0  7F A5 EB 78 */	mr r5, r29
/* 80457FA4  7F 86 E3 78 */	mr r6, r28
/* 80457FA8  38 E0 FF FF */	li r7, -1
/* 80457FAC  3D 00 80 46 */	lis r8, lit_3900@ha /* 0x80459380@ha */
/* 80457FB0  C0 28 93 80 */	lfs f1, lit_3900@l(r8)  /* 0x80459380@l */
/* 80457FB4  39 00 00 00 */	li r8, 0
/* 80457FB8  39 20 FF FF */	li r9, -1
/* 80457FBC  4B BB 56 81 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80457FC0  2C 03 00 00 */	cmpwi r3, 0
/* 80457FC4  40 82 00 0C */	bne lbl_80457FD0
/* 80457FC8  38 60 00 00 */	li r3, 0
/* 80457FCC  48 00 00 5C */	b lbl_80458028
lbl_80457FD0:
/* 80457FD0  80 7B 00 00 */	lwz r3, 0(r27)
/* 80457FD4  83 A3 00 14 */	lwz r29, 0x14(r3)
/* 80457FD8  3B 80 00 00 */	li r28, 0
/* 80457FDC  3B C0 00 03 */	li r30, 3
/* 80457FE0  48 00 00 2C */	b lbl_8045800C
lbl_80457FE4:
/* 80457FE4  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80457FE8  57 80 0B FC */	rlwinm r0, r28, 1, 0xf, 0x1e
/* 80457FEC  7C 83 02 2E */	lhzx r4, r3, r0
/* 80457FF0  7F E3 FB 78 */	mr r3, r31
/* 80457FF4  4B FF FC 45 */	bl createMatAnm__FP12J3DModelDataUs
/* 80457FF8  2C 03 00 00 */	cmpwi r3, 0
/* 80457FFC  40 82 00 0C */	bne lbl_80458008
/* 80458000  38 60 00 00 */	li r3, 0
/* 80458004  48 00 00 24 */	b lbl_80458028
lbl_80458008:
/* 80458008  3B 9C 00 01 */	addi r28, r28, 1
lbl_8045800C:
/* 8045800C  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 80458010  A0 1D 00 14 */	lhz r0, 0x14(r29)
/* 80458014  7C 00 F3 D6 */	divw r0, r0, r30
/* 80458018  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8045801C  7C 03 00 40 */	cmplw r3, r0
/* 80458020  41 80 FF C4 */	blt lbl_80457FE4
/* 80458024  38 60 00 01 */	li r3, 1
lbl_80458028:
/* 80458028  39 61 00 20 */	addi r11, r1, 0x20
/* 8045802C  4B F0 A1 F5 */	bl _restgpr_27
/* 80458030  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80458034  7C 08 03 A6 */	mtlr r0
/* 80458038  38 21 00 20 */	addi r1, r1, 0x20
/* 8045803C  4E 80 00 20 */	blr 
