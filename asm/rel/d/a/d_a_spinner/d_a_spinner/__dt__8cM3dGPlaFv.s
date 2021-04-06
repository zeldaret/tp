lbl_804D3468:
/* 804D3468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D346C  7C 08 02 A6 */	mflr r0
/* 804D3470  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D3474  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D3478  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D347C  41 82 00 1C */	beq lbl_804D3498
/* 804D3480  3C A0 80 4D */	lis r5, __vt__8cM3dGPla@ha /* 0x804D4F3C@ha */
/* 804D3484  38 05 4F 3C */	addi r0, r5, __vt__8cM3dGPla@l /* 0x804D4F3C@l */
/* 804D3488  90 1F 00 10 */	stw r0, 0x10(r31)
/* 804D348C  7C 80 07 35 */	extsh. r0, r4
/* 804D3490  40 81 00 08 */	ble lbl_804D3498
/* 804D3494  4B DF B8 A9 */	bl __dl__FPv
lbl_804D3498:
/* 804D3498  7F E3 FB 78 */	mr r3, r31
/* 804D349C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D34A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D34A4  7C 08 03 A6 */	mtlr r0
/* 804D34A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D34AC  4E 80 00 20 */	blr 
