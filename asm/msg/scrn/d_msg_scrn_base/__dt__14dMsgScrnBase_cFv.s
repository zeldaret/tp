lbl_8023C124:
/* 8023C124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023C128  7C 08 02 A6 */	mflr r0
/* 8023C12C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023C130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023C134  7C 7F 1B 79 */	or. r31, r3, r3
/* 8023C138  41 82 00 1C */	beq lbl_8023C154
/* 8023C13C  3C A0 80 3C */	lis r5, __vt__14dMsgScrnBase_c@ha /* 0x803C0D58@ha */
/* 8023C140  38 05 0D 58 */	addi r0, r5, __vt__14dMsgScrnBase_c@l /* 0x803C0D58@l */
/* 8023C144  90 1F 00 00 */	stw r0, 0(r31)
/* 8023C148  7C 80 07 35 */	extsh. r0, r4
/* 8023C14C  40 81 00 08 */	ble lbl_8023C154
/* 8023C150  48 09 2B ED */	bl __dl__FPv
lbl_8023C154:
/* 8023C154  7F E3 FB 78 */	mr r3, r31
/* 8023C158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023C15C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023C160  7C 08 03 A6 */	mtlr r0
/* 8023C164  38 21 00 10 */	addi r1, r1, 0x10
/* 8023C168  4E 80 00 20 */	blr 
