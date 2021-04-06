lbl_804CD25C:
/* 804CD25C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CD260  7C 08 02 A6 */	mflr r0
/* 804CD264  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CD268  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CD26C  7C 7F 1B 79 */	or. r31, r3, r3
/* 804CD270  41 82 00 1C */	beq lbl_804CD28C
/* 804CD274  3C A0 80 4D */	lis r5, __vt__8cM3dGCyl@ha /* 0x804CE614@ha */
/* 804CD278  38 05 E6 14 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x804CE614@l */
/* 804CD27C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 804CD280  7C 80 07 35 */	extsh. r0, r4
/* 804CD284  40 81 00 08 */	ble lbl_804CD28C
/* 804CD288  4B E0 1A B5 */	bl __dl__FPv
lbl_804CD28C:
/* 804CD28C  7F E3 FB 78 */	mr r3, r31
/* 804CD290  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CD294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CD298  7C 08 03 A6 */	mtlr r0
/* 804CD29C  38 21 00 10 */	addi r1, r1, 0x10
/* 804CD2A0  4E 80 00 20 */	blr 
