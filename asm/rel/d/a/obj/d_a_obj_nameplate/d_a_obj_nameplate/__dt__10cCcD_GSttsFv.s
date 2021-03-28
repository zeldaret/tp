lbl_80594E24:
/* 80594E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80594E28  7C 08 02 A6 */	mflr r0
/* 80594E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80594E34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80594E38  41 82 00 1C */	beq lbl_80594E54
/* 80594E3C  3C A0 80 59 */	lis r5, __vt__10cCcD_GStts@ha
/* 80594E40  38 05 4F 7C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80594E44  90 1F 00 00 */	stw r0, 0(r31)
/* 80594E48  7C 80 07 35 */	extsh. r0, r4
/* 80594E4C  40 81 00 08 */	ble lbl_80594E54
/* 80594E50  4B D3 9E EC */	b __dl__FPv
lbl_80594E54:
/* 80594E54  7F E3 FB 78 */	mr r3, r31
/* 80594E58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80594E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80594E60  7C 08 03 A6 */	mtlr r0
/* 80594E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80594E68  4E 80 00 20 */	blr 
