lbl_804E15BC:
/* 804E15BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E15C0  7C 08 02 A6 */	mflr r0
/* 804E15C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E15C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E15CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 804E15D0  41 82 00 1C */	beq lbl_804E15EC
/* 804E15D4  3C A0 80 4E */	lis r5, __vt__8cM3dGCyl@ha /* 0x804E1B60@ha */
/* 804E15D8  38 05 1B 60 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x804E1B60@l */
/* 804E15DC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 804E15E0  7C 80 07 35 */	extsh. r0, r4
/* 804E15E4  40 81 00 08 */	ble lbl_804E15EC
/* 804E15E8  4B DE D7 55 */	bl __dl__FPv
lbl_804E15EC:
/* 804E15EC  7F E3 FB 78 */	mr r3, r31
/* 804E15F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E15F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E15F8  7C 08 03 A6 */	mtlr r0
/* 804E15FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1600  4E 80 00 20 */	blr 
