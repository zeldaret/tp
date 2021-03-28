lbl_80BCC458:
/* 80BCC458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCC45C  7C 08 02 A6 */	mflr r0
/* 80BCC460  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCC464  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCC468  93 C1 00 08 */	stw r30, 8(r1)
/* 80BCC46C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BCC470  7C 9F 23 78 */	mr r31, r4
/* 80BCC474  41 82 00 38 */	beq lbl_80BCC4AC
/* 80BCC478  3C 80 80 BD */	lis r4, __vt__12dBgS_ObjAcch@ha
/* 80BCC47C  38 84 C6 F0 */	addi r4, r4, __vt__12dBgS_ObjAcch@l
/* 80BCC480  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80BCC484  38 04 00 0C */	addi r0, r4, 0xc
/* 80BCC488  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80BCC48C  38 04 00 18 */	addi r0, r4, 0x18
/* 80BCC490  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80BCC494  38 80 00 00 */	li r4, 0
/* 80BCC498  4B 4A 9A FC */	b __dt__9dBgS_AcchFv
/* 80BCC49C  7F E0 07 35 */	extsh. r0, r31
/* 80BCC4A0  40 81 00 0C */	ble lbl_80BCC4AC
/* 80BCC4A4  7F C3 F3 78 */	mr r3, r30
/* 80BCC4A8  4B 70 28 94 */	b __dl__FPv
lbl_80BCC4AC:
/* 80BCC4AC  7F C3 F3 78 */	mr r3, r30
/* 80BCC4B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCC4B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BCC4B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCC4BC  7C 08 03 A6 */	mtlr r0
/* 80BCC4C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCC4C4  4E 80 00 20 */	blr 
