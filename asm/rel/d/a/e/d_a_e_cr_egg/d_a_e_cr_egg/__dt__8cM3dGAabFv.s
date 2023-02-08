lbl_8069A7FC:
/* 8069A7FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8069A800  7C 08 02 A6 */	mflr r0
/* 8069A804  90 01 00 14 */	stw r0, 0x14(r1)
/* 8069A808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8069A80C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8069A810  41 82 00 1C */	beq lbl_8069A82C
/* 8069A814  3C A0 80 6A */	lis r5, __vt__8cM3dGAab@ha /* 0x8069A9BC@ha */
/* 8069A818  38 05 A9 BC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8069A9BC@l */
/* 8069A81C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8069A820  7C 80 07 35 */	extsh. r0, r4
/* 8069A824  40 81 00 08 */	ble lbl_8069A82C
/* 8069A828  4B C3 45 15 */	bl __dl__FPv
lbl_8069A82C:
/* 8069A82C  7F E3 FB 78 */	mr r3, r31
/* 8069A830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8069A834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8069A838  7C 08 03 A6 */	mtlr r0
/* 8069A83C  38 21 00 10 */	addi r1, r1, 0x10
/* 8069A840  4E 80 00 20 */	blr 
