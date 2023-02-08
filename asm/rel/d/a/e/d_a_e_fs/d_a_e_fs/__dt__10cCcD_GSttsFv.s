lbl_806BDF4C:
/* 806BDF4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BDF50  7C 08 02 A6 */	mflr r0
/* 806BDF54  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BDF58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BDF5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806BDF60  41 82 00 1C */	beq lbl_806BDF7C
/* 806BDF64  3C A0 80 6C */	lis r5, __vt__10cCcD_GStts@ha /* 0x806BE6E8@ha */
/* 806BDF68  38 05 E6 E8 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x806BE6E8@l */
/* 806BDF6C  90 1F 00 00 */	stw r0, 0(r31)
/* 806BDF70  7C 80 07 35 */	extsh. r0, r4
/* 806BDF74  40 81 00 08 */	ble lbl_806BDF7C
/* 806BDF78  4B C1 0D C5 */	bl __dl__FPv
lbl_806BDF7C:
/* 806BDF7C  7F E3 FB 78 */	mr r3, r31
/* 806BDF80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BDF84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BDF88  7C 08 03 A6 */	mtlr r0
/* 806BDF8C  38 21 00 10 */	addi r1, r1, 0x10
/* 806BDF90  4E 80 00 20 */	blr 
