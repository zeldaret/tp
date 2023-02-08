lbl_80AEC574:
/* 80AEC574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEC578  7C 08 02 A6 */	mflr r0
/* 80AEC57C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEC580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEC584  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEC588  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEC58C  7C 9E 23 78 */	mr r30, r4
/* 80AEC590  41 82 00 C4 */	beq lbl_80AEC654
/* 80AEC594  3C 60 80 AF */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AEC9D0@ha */
/* 80AEC598  38 03 C9 D0 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AEC9D0@l */
/* 80AEC59C  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80AEC5A0  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80AEC5A4  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha /* 0x80AEC0DC@ha */
/* 80AEC5A8  38 84 C0 DC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AEC0DC@l */
/* 80AEC5AC  38 A0 00 0C */	li r5, 0xc
/* 80AEC5B0  38 C0 00 03 */	li r6, 3
/* 80AEC5B4  4B 87 57 35 */	bl __destroy_arr
/* 80AEC5B8  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80AEC5BC  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha /* 0x80AEC0DC@ha */
/* 80AEC5C0  38 84 C0 DC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AEC0DC@l */
/* 80AEC5C4  38 A0 00 0C */	li r5, 0xc
/* 80AEC5C8  38 C0 00 03 */	li r6, 3
/* 80AEC5CC  4B 87 57 1D */	bl __destroy_arr
/* 80AEC5D0  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80AEC5D4  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha /* 0x80AEC0DC@ha */
/* 80AEC5D8  38 84 C0 DC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AEC0DC@l */
/* 80AEC5DC  38 A0 00 0C */	li r5, 0xc
/* 80AEC5E0  38 C0 00 03 */	li r6, 3
/* 80AEC5E4  4B 87 57 05 */	bl __destroy_arr
/* 80AEC5E8  38 7F 00 78 */	addi r3, r31, 0x78
/* 80AEC5EC  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha /* 0x80AEC0DC@ha */
/* 80AEC5F0  38 84 C0 DC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AEC0DC@l */
/* 80AEC5F4  38 A0 00 0C */	li r5, 0xc
/* 80AEC5F8  38 C0 00 03 */	li r6, 3
/* 80AEC5FC  4B 87 56 ED */	bl __destroy_arr
/* 80AEC600  38 7F 00 54 */	addi r3, r31, 0x54
/* 80AEC604  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha /* 0x80AEC0DC@ha */
/* 80AEC608  38 84 C0 DC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AEC0DC@l */
/* 80AEC60C  38 A0 00 0C */	li r5, 0xc
/* 80AEC610  38 C0 00 03 */	li r6, 3
/* 80AEC614  4B 87 56 D5 */	bl __destroy_arr
/* 80AEC618  38 7F 00 30 */	addi r3, r31, 0x30
/* 80AEC61C  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha /* 0x80AEC0DC@ha */
/* 80AEC620  38 84 C0 DC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AEC0DC@l */
/* 80AEC624  38 A0 00 0C */	li r5, 0xc
/* 80AEC628  38 C0 00 03 */	li r6, 3
/* 80AEC62C  4B 87 56 BD */	bl __destroy_arr
/* 80AEC630  28 1F 00 00 */	cmplwi r31, 0
/* 80AEC634  41 82 00 10 */	beq lbl_80AEC644
/* 80AEC638  3C 60 80 AF */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AEC9C4@ha */
/* 80AEC63C  38 03 C9 C4 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AEC9C4@l */
/* 80AEC640  90 1F 00 04 */	stw r0, 4(r31)
lbl_80AEC644:
/* 80AEC644  7F C0 07 35 */	extsh. r0, r30
/* 80AEC648  40 81 00 0C */	ble lbl_80AEC654
/* 80AEC64C  7F E3 FB 78 */	mr r3, r31
/* 80AEC650  4B 7E 26 ED */	bl __dl__FPv
lbl_80AEC654:
/* 80AEC654  7F E3 FB 78 */	mr r3, r31
/* 80AEC658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEC65C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEC660  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEC664  7C 08 03 A6 */	mtlr r0
/* 80AEC668  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEC66C  4E 80 00 20 */	blr 
