lbl_804EE85C:
/* 804EE85C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE860  7C 08 02 A6 */	mflr r0
/* 804EE864  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE868  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE86C  7C 7F 1B 79 */	or. r31, r3, r3
/* 804EE870  41 82 00 10 */	beq lbl_804EE880
/* 804EE874  7C 80 07 35 */	extsh. r0, r4
/* 804EE878  40 81 00 08 */	ble lbl_804EE880
/* 804EE87C  4B DE 04 C1 */	bl __dl__FPv
lbl_804EE880:
/* 804EE880  7F E3 FB 78 */	mr r3, r31
/* 804EE884  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE88C  7C 08 03 A6 */	mtlr r0
/* 804EE890  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE894  4E 80 00 20 */	blr 
