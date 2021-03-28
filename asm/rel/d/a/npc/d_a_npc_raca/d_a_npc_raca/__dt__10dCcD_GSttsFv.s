lbl_80AB875C:
/* 80AB875C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB8760  7C 08 02 A6 */	mflr r0
/* 80AB8764  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB8768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB876C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB8770  41 82 00 30 */	beq lbl_80AB87A0
/* 80AB8774  3C 60 80 AC */	lis r3, __vt__10dCcD_GStts@ha
/* 80AB8778  38 03 94 00 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AB877C  90 1F 00 00 */	stw r0, 0(r31)
/* 80AB8780  41 82 00 10 */	beq lbl_80AB8790
/* 80AB8784  3C 60 80 AC */	lis r3, __vt__10cCcD_GStts@ha
/* 80AB8788  38 03 93 F4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AB878C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AB8790:
/* 80AB8790  7C 80 07 35 */	extsh. r0, r4
/* 80AB8794  40 81 00 0C */	ble lbl_80AB87A0
/* 80AB8798  7F E3 FB 78 */	mr r3, r31
/* 80AB879C  4B 81 65 A0 */	b __dl__FPv
lbl_80AB87A0:
/* 80AB87A0  7F E3 FB 78 */	mr r3, r31
/* 80AB87A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB87A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB87AC  7C 08 03 A6 */	mtlr r0
/* 80AB87B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB87B4  4E 80 00 20 */	blr 
