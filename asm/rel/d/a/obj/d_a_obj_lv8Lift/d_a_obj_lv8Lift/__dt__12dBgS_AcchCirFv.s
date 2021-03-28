lbl_80C88CB4:
/* 80C88CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C88CB8  7C 08 02 A6 */	mflr r0
/* 80C88CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C88CC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C88CC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C88CC8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C88CCC  7C 9F 23 78 */	mr r31, r4
/* 80C88CD0  41 82 00 38 */	beq lbl_80C88D08
/* 80C88CD4  3C 60 80 C9 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80C88CD8  38 03 A1 64 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80C88CDC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80C88CE0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80C88CE4  38 80 FF FF */	li r4, -1
/* 80C88CE8  4B 5E 62 30 */	b __dt__8cM3dGCirFv
/* 80C88CEC  7F C3 F3 78 */	mr r3, r30
/* 80C88CF0  38 80 00 00 */	li r4, 0
/* 80C88CF4  4B 5D F3 BC */	b __dt__13cBgS_PolyInfoFv
/* 80C88CF8  7F E0 07 35 */	extsh. r0, r31
/* 80C88CFC  40 81 00 0C */	ble lbl_80C88D08
/* 80C88D00  7F C3 F3 78 */	mr r3, r30
/* 80C88D04  4B 64 60 38 */	b __dl__FPv
lbl_80C88D08:
/* 80C88D08  7F C3 F3 78 */	mr r3, r30
/* 80C88D0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C88D10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C88D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C88D18  7C 08 03 A6 */	mtlr r0
/* 80C88D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C88D20  4E 80 00 20 */	blr 
