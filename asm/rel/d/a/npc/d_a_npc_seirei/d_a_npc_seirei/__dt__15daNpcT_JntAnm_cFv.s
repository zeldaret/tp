lbl_80AD7734:
/* 80AD7734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD7738  7C 08 02 A6 */	mflr r0
/* 80AD773C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD7740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD7744  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD7748  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD774C  7C 9E 23 78 */	mr r30, r4
/* 80AD7750  41 82 00 C4 */	beq lbl_80AD7814
/* 80AD7754  3C 60 80 AE */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AD8010@ha */
/* 80AD7758  38 03 80 10 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AD8010@l */
/* 80AD775C  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80AD7760  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80AD7764  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AD72B4@ha */
/* 80AD7768  38 84 72 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AD72B4@l */
/* 80AD776C  38 A0 00 0C */	li r5, 0xc
/* 80AD7770  38 C0 00 03 */	li r6, 3
/* 80AD7774  4B 88 A5 75 */	bl __destroy_arr
/* 80AD7778  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80AD777C  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AD72B4@ha */
/* 80AD7780  38 84 72 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AD72B4@l */
/* 80AD7784  38 A0 00 0C */	li r5, 0xc
/* 80AD7788  38 C0 00 03 */	li r6, 3
/* 80AD778C  4B 88 A5 5D */	bl __destroy_arr
/* 80AD7790  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80AD7794  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AD72B4@ha */
/* 80AD7798  38 84 72 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AD72B4@l */
/* 80AD779C  38 A0 00 0C */	li r5, 0xc
/* 80AD77A0  38 C0 00 03 */	li r6, 3
/* 80AD77A4  4B 88 A5 45 */	bl __destroy_arr
/* 80AD77A8  38 7F 00 78 */	addi r3, r31, 0x78
/* 80AD77AC  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AD72B4@ha */
/* 80AD77B0  38 84 72 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AD72B4@l */
/* 80AD77B4  38 A0 00 0C */	li r5, 0xc
/* 80AD77B8  38 C0 00 03 */	li r6, 3
/* 80AD77BC  4B 88 A5 2D */	bl __destroy_arr
/* 80AD77C0  38 7F 00 54 */	addi r3, r31, 0x54
/* 80AD77C4  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AD72B4@ha */
/* 80AD77C8  38 84 72 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AD72B4@l */
/* 80AD77CC  38 A0 00 0C */	li r5, 0xc
/* 80AD77D0  38 C0 00 03 */	li r6, 3
/* 80AD77D4  4B 88 A5 15 */	bl __destroy_arr
/* 80AD77D8  38 7F 00 30 */	addi r3, r31, 0x30
/* 80AD77DC  3C 80 80 AD */	lis r4, __dt__4cXyzFv@ha /* 0x80AD72B4@ha */
/* 80AD77E0  38 84 72 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AD72B4@l */
/* 80AD77E4  38 A0 00 0C */	li r5, 0xc
/* 80AD77E8  38 C0 00 03 */	li r6, 3
/* 80AD77EC  4B 88 A4 FD */	bl __destroy_arr
/* 80AD77F0  28 1F 00 00 */	cmplwi r31, 0
/* 80AD77F4  41 82 00 10 */	beq lbl_80AD7804
/* 80AD77F8  3C 60 80 AE */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AD8004@ha */
/* 80AD77FC  38 03 80 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AD8004@l */
/* 80AD7800  90 1F 00 04 */	stw r0, 4(r31)
lbl_80AD7804:
/* 80AD7804  7F C0 07 35 */	extsh. r0, r30
/* 80AD7808  40 81 00 0C */	ble lbl_80AD7814
/* 80AD780C  7F E3 FB 78 */	mr r3, r31
/* 80AD7810  4B 7F 75 2D */	bl __dl__FPv
lbl_80AD7814:
/* 80AD7814  7F E3 FB 78 */	mr r3, r31
/* 80AD7818  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD781C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD7820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD7824  7C 08 03 A6 */	mtlr r0
/* 80AD7828  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD782C  4E 80 00 20 */	blr 
