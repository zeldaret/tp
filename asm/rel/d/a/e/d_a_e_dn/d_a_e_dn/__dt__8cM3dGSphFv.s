lbl_804EE034:
/* 804EE034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EE038  7C 08 02 A6 */	mflr r0
/* 804EE03C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EE040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EE044  7C 7F 1B 79 */	or. r31, r3, r3
/* 804EE048  41 82 00 1C */	beq lbl_804EE064
/* 804EE04C  3C A0 80 4F */	lis r5, __vt__8cM3dGSph@ha /* 0x804EEE6C@ha */
/* 804EE050  38 05 EE 6C */	addi r0, r5, __vt__8cM3dGSph@l /* 0x804EEE6C@l */
/* 804EE054  90 1F 00 10 */	stw r0, 0x10(r31)
/* 804EE058  7C 80 07 35 */	extsh. r0, r4
/* 804EE05C  40 81 00 08 */	ble lbl_804EE064
/* 804EE060  4B DE 0C DD */	bl __dl__FPv
lbl_804EE064:
/* 804EE064  7F E3 FB 78 */	mr r3, r31
/* 804EE068  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EE06C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EE070  7C 08 03 A6 */	mtlr r0
/* 804EE074  38 21 00 10 */	addi r1, r1, 0x10
/* 804EE078  4E 80 00 20 */	blr 
