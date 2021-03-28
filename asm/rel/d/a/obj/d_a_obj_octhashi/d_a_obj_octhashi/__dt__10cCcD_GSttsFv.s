lbl_80CA625C:
/* 80CA625C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA6260  7C 08 02 A6 */	mflr r0
/* 80CA6264  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA6268  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA626C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA6270  41 82 00 1C */	beq lbl_80CA628C
/* 80CA6274  3C A0 80 CA */	lis r5, __vt__10cCcD_GStts@ha
/* 80CA6278  38 05 66 1C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80CA627C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA6280  7C 80 07 35 */	extsh. r0, r4
/* 80CA6284  40 81 00 08 */	ble lbl_80CA628C
/* 80CA6288  4B 62 8A B4 */	b __dl__FPv
lbl_80CA628C:
/* 80CA628C  7F E3 FB 78 */	mr r3, r31
/* 80CA6290  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA6294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6298  7C 08 03 A6 */	mtlr r0
/* 80CA629C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA62A0  4E 80 00 20 */	blr 
