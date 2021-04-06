lbl_80AEE7A8:
/* 80AEE7A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEE7AC  7C 08 02 A6 */	mflr r0
/* 80AEE7B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEE7B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEE7B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80AEE7BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEE7C0  7C 9E 23 78 */	mr r30, r4
/* 80AEE7C4  41 82 00 C4 */	beq lbl_80AEE888
/* 80AEE7C8  3C 60 80 AF */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AEF384@ha */
/* 80AEE7CC  38 03 F3 84 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AEF384@l */
/* 80AEE7D0  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80AEE7D4  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80AEE7D8  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha /* 0x80AEE328@ha */
/* 80AEE7DC  38 84 E3 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AEE328@l */
/* 80AEE7E0  38 A0 00 0C */	li r5, 0xc
/* 80AEE7E4  38 C0 00 03 */	li r6, 3
/* 80AEE7E8  4B 87 35 01 */	bl __destroy_arr
/* 80AEE7EC  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80AEE7F0  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha /* 0x80AEE328@ha */
/* 80AEE7F4  38 84 E3 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AEE328@l */
/* 80AEE7F8  38 A0 00 0C */	li r5, 0xc
/* 80AEE7FC  38 C0 00 03 */	li r6, 3
/* 80AEE800  4B 87 34 E9 */	bl __destroy_arr
/* 80AEE804  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80AEE808  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha /* 0x80AEE328@ha */
/* 80AEE80C  38 84 E3 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AEE328@l */
/* 80AEE810  38 A0 00 0C */	li r5, 0xc
/* 80AEE814  38 C0 00 03 */	li r6, 3
/* 80AEE818  4B 87 34 D1 */	bl __destroy_arr
/* 80AEE81C  38 7F 00 78 */	addi r3, r31, 0x78
/* 80AEE820  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha /* 0x80AEE328@ha */
/* 80AEE824  38 84 E3 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AEE328@l */
/* 80AEE828  38 A0 00 0C */	li r5, 0xc
/* 80AEE82C  38 C0 00 03 */	li r6, 3
/* 80AEE830  4B 87 34 B9 */	bl __destroy_arr
/* 80AEE834  38 7F 00 54 */	addi r3, r31, 0x54
/* 80AEE838  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha /* 0x80AEE328@ha */
/* 80AEE83C  38 84 E3 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AEE328@l */
/* 80AEE840  38 A0 00 0C */	li r5, 0xc
/* 80AEE844  38 C0 00 03 */	li r6, 3
/* 80AEE848  4B 87 34 A1 */	bl __destroy_arr
/* 80AEE84C  38 7F 00 30 */	addi r3, r31, 0x30
/* 80AEE850  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha /* 0x80AEE328@ha */
/* 80AEE854  38 84 E3 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AEE328@l */
/* 80AEE858  38 A0 00 0C */	li r5, 0xc
/* 80AEE85C  38 C0 00 03 */	li r6, 3
/* 80AEE860  4B 87 34 89 */	bl __destroy_arr
/* 80AEE864  28 1F 00 00 */	cmplwi r31, 0
/* 80AEE868  41 82 00 10 */	beq lbl_80AEE878
/* 80AEE86C  3C 60 80 AF */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AEF378@ha */
/* 80AEE870  38 03 F3 78 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AEF378@l */
/* 80AEE874  90 1F 00 04 */	stw r0, 4(r31)
lbl_80AEE878:
/* 80AEE878  7F C0 07 35 */	extsh. r0, r30
/* 80AEE87C  40 81 00 0C */	ble lbl_80AEE888
/* 80AEE880  7F E3 FB 78 */	mr r3, r31
/* 80AEE884  4B 7E 04 B9 */	bl __dl__FPv
lbl_80AEE888:
/* 80AEE888  7F E3 FB 78 */	mr r3, r31
/* 80AEE88C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEE890  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AEE894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEE898  7C 08 03 A6 */	mtlr r0
/* 80AEE89C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEE8A0  4E 80 00 20 */	blr 
