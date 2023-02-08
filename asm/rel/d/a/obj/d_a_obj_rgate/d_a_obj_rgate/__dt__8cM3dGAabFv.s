lbl_80CBC1EC:
/* 80CBC1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC1F0  7C 08 02 A6 */	mflr r0
/* 80CBC1F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC1F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBC1FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBC200  41 82 00 1C */	beq lbl_80CBC21C
/* 80CBC204  3C A0 80 CC */	lis r5, __vt__8cM3dGAab@ha /* 0x80CBC584@ha */
/* 80CBC208  38 05 C5 84 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80CBC584@l */
/* 80CBC20C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CBC210  7C 80 07 35 */	extsh. r0, r4
/* 80CBC214  40 81 00 08 */	ble lbl_80CBC21C
/* 80CBC218  4B 61 2B 25 */	bl __dl__FPv
lbl_80CBC21C:
/* 80CBC21C  7F E3 FB 78 */	mr r3, r31
/* 80CBC220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBC224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC228  7C 08 03 A6 */	mtlr r0
/* 80CBC22C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC230  4E 80 00 20 */	blr 
