lbl_80B27750:
/* 80B27750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B27754  7C 08 02 A6 */	mflr r0
/* 80B27758  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2775C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B27760  93 C1 00 08 */	stw r30, 8(r1)
/* 80B27764  7C 7F 1B 78 */	mr r31, r3
/* 80B27768  7C 9E 23 78 */	mr r30, r4
/* 80B2776C  2C 1E 00 01 */	cmpwi r30, 1
/* 80B27770  40 82 00 30 */	bne lbl_80B277A0
/* 80B27774  A8 9F 0D 12 */	lha r4, 0xd12(r31)
/* 80B27778  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B2777C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B27780  4B 4E 4C B4 */	b mDoMtx_YrotM__FPA4_fs
/* 80B27784  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B27788  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B2778C  A8 1F 0D 0E */	lha r0, 0xd0e(r31)
/* 80B27790  7C 00 00 D0 */	neg r0, r0
/* 80B27794  7C 04 07 34 */	extsh r4, r0
/* 80B27798  4B 4E 4D 34 */	b mDoMtx_ZrotM__FPA4_fs
/* 80B2779C  48 00 00 2C */	b lbl_80B277C8
lbl_80B277A0:
/* 80B277A0  2C 1E 00 04 */	cmpwi r30, 4
/* 80B277A4  40 82 00 24 */	bne lbl_80B277C8
/* 80B277A8  A8 9F 0D 0C */	lha r4, 0xd0c(r31)
/* 80B277AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B277B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B277B4  4B 4E 4C 80 */	b mDoMtx_YrotM__FPA4_fs
/* 80B277B8  A8 9F 0D 08 */	lha r4, 0xd08(r31)
/* 80B277BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B277C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B277C4  4B 4E 4D 08 */	b mDoMtx_ZrotM__FPA4_fs
lbl_80B277C8:
/* 80B277C8  3C 60 80 B3 */	lis r3, lit_4055@ha
/* 80B277CC  C0 23 CE EC */	lfs f1, lit_4055@l(r3)
/* 80B277D0  C0 1F 10 04 */	lfs f0, 0x1004(r31)
/* 80B277D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B277D8  40 80 00 30 */	bge lbl_80B27808
/* 80B277DC  2C 1E 00 12 */	cmpwi r30, 0x12
/* 80B277E0  40 82 00 14 */	bne lbl_80B277F4
/* 80B277E4  38 00 00 01 */	li r0, 1
/* 80B277E8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B277EC  98 03 00 55 */	stb r0, 0x55(r3)
/* 80B277F0  48 00 00 18 */	b lbl_80B27808
lbl_80B277F4:
/* 80B277F4  2C 1E 00 1C */	cmpwi r30, 0x1c
/* 80B277F8  40 82 00 10 */	bne lbl_80B27808
/* 80B277FC  38 00 00 00 */	li r0, 0
/* 80B27800  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80B27804  98 03 00 55 */	stb r0, 0x55(r3)
lbl_80B27808:
/* 80B27808  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2780C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B27810  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B27814  7C 08 03 A6 */	mtlr r0
/* 80B27818  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2781C  4E 80 00 20 */	blr 
