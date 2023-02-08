lbl_804D9C00:
/* 804D9C00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D9C04  7C 08 02 A6 */	mflr r0
/* 804D9C08  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D9C0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D9C10  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D9C14  41 82 00 1C */	beq lbl_804D9C30
/* 804D9C18  3C A0 80 4E */	lis r5, __vt__8cM3dGAab@ha /* 0x804DA2D0@ha */
/* 804D9C1C  38 05 A2 D0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x804DA2D0@l */
/* 804D9C20  90 1F 00 18 */	stw r0, 0x18(r31)
/* 804D9C24  7C 80 07 35 */	extsh. r0, r4
/* 804D9C28  40 81 00 08 */	ble lbl_804D9C30
/* 804D9C2C  4B DF 51 11 */	bl __dl__FPv
lbl_804D9C30:
/* 804D9C30  7F E3 FB 78 */	mr r3, r31
/* 804D9C34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D9C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D9C3C  7C 08 03 A6 */	mtlr r0
/* 804D9C40  38 21 00 10 */	addi r1, r1, 0x10
/* 804D9C44  4E 80 00 20 */	blr 
