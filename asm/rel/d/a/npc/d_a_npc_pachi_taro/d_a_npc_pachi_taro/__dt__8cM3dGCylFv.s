lbl_80AA07DC:
/* 80AA07DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA07E0  7C 08 02 A6 */	mflr r0
/* 80AA07E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA07E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA07EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA07F0  41 82 00 1C */	beq lbl_80AA080C
/* 80AA07F4  3C A0 80 AA */	lis r5, __vt__8cM3dGCyl@ha /* 0x80AA2AA4@ha */
/* 80AA07F8  38 05 2A A4 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80AA2AA4@l */
/* 80AA07FC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AA0800  7C 80 07 35 */	extsh. r0, r4
/* 80AA0804  40 81 00 08 */	ble lbl_80AA080C
/* 80AA0808  4B 82 E5 35 */	bl __dl__FPv
lbl_80AA080C:
/* 80AA080C  7F E3 FB 78 */	mr r3, r31
/* 80AA0810  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA0814  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA0818  7C 08 03 A6 */	mtlr r0
/* 80AA081C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0820  4E 80 00 20 */	blr 
