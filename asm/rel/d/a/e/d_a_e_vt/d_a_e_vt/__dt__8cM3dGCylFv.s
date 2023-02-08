lbl_807C47B4:
/* 807C47B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C47B8  7C 08 02 A6 */	mflr r0
/* 807C47BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C47C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C47C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 807C47C8  41 82 00 1C */	beq lbl_807C47E4
/* 807C47CC  3C A0 80 7D */	lis r5, __vt__8cM3dGCyl@ha /* 0x807CF448@ha */
/* 807C47D0  38 05 F4 48 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x807CF448@l */
/* 807C47D4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 807C47D8  7C 80 07 35 */	extsh. r0, r4
/* 807C47DC  40 81 00 08 */	ble lbl_807C47E4
/* 807C47E0  4B B0 A5 5D */	bl __dl__FPv
lbl_807C47E4:
/* 807C47E4  7F E3 FB 78 */	mr r3, r31
/* 807C47E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C47EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C47F0  7C 08 03 A6 */	mtlr r0
/* 807C47F4  38 21 00 10 */	addi r1, r1, 0x10
/* 807C47F8  4E 80 00 20 */	blr 
