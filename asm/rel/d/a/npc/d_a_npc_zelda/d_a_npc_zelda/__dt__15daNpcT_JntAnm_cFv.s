lbl_80B77668:
/* 80B77668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7766C  7C 08 02 A6 */	mflr r0
/* 80B77670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B77674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B77678  93 C1 00 08 */	stw r30, 8(r1)
/* 80B7767C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B77680  7C 9E 23 78 */	mr r30, r4
/* 80B77684  41 82 00 C4 */	beq lbl_80B77748
/* 80B77688  3C 60 80 B8 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B7768C  38 03 83 08 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B77690  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80B77694  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80B77698  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B7769C  38 84 71 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B776A0  38 A0 00 0C */	li r5, 0xc
/* 80B776A4  38 C0 00 03 */	li r6, 3
/* 80B776A8  4B 7E A6 40 */	b __destroy_arr
/* 80B776AC  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80B776B0  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B776B4  38 84 71 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B776B8  38 A0 00 0C */	li r5, 0xc
/* 80B776BC  38 C0 00 03 */	li r6, 3
/* 80B776C0  4B 7E A6 28 */	b __destroy_arr
/* 80B776C4  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80B776C8  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B776CC  38 84 71 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B776D0  38 A0 00 0C */	li r5, 0xc
/* 80B776D4  38 C0 00 03 */	li r6, 3
/* 80B776D8  4B 7E A6 10 */	b __destroy_arr
/* 80B776DC  38 7F 00 78 */	addi r3, r31, 0x78
/* 80B776E0  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B776E4  38 84 71 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B776E8  38 A0 00 0C */	li r5, 0xc
/* 80B776EC  38 C0 00 03 */	li r6, 3
/* 80B776F0  4B 7E A5 F8 */	b __destroy_arr
/* 80B776F4  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B776F8  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B776FC  38 84 71 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B77700  38 A0 00 0C */	li r5, 0xc
/* 80B77704  38 C0 00 03 */	li r6, 3
/* 80B77708  4B 7E A5 E0 */	b __destroy_arr
/* 80B7770C  38 7F 00 30 */	addi r3, r31, 0x30
/* 80B77710  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha
/* 80B77714  38 84 71 E8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B77718  38 A0 00 0C */	li r5, 0xc
/* 80B7771C  38 C0 00 03 */	li r6, 3
/* 80B77720  4B 7E A5 C8 */	b __destroy_arr
/* 80B77724  28 1F 00 00 */	cmplwi r31, 0
/* 80B77728  41 82 00 10 */	beq lbl_80B77738
/* 80B7772C  3C 60 80 B8 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B77730  38 03 82 FC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B77734  90 1F 00 04 */	stw r0, 4(r31)
lbl_80B77738:
/* 80B77738  7F C0 07 35 */	extsh. r0, r30
/* 80B7773C  40 81 00 0C */	ble lbl_80B77748
/* 80B77740  7F E3 FB 78 */	mr r3, r31
/* 80B77744  4B 75 75 F8 */	b __dl__FPv
lbl_80B77748:
/* 80B77748  7F E3 FB 78 */	mr r3, r31
/* 80B7774C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B77750  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B77754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B77758  7C 08 03 A6 */	mtlr r0
/* 80B7775C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B77760  4E 80 00 20 */	blr 
