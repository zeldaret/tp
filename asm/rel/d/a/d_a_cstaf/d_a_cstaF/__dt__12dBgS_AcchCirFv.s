lbl_804DE220:
/* 804DE220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DE224  7C 08 02 A6 */	mflr r0
/* 804DE228  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DE22C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DE230  93 C1 00 08 */	stw r30, 8(r1)
/* 804DE234  7C 7E 1B 79 */	or. r30, r3, r3
/* 804DE238  7C 9F 23 78 */	mr r31, r4
/* 804DE23C  41 82 00 38 */	beq lbl_804DE274
/* 804DE240  3C 60 80 4E */	lis r3, __vt__12dBgS_AcchCir@ha
/* 804DE244  38 03 FA 40 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 804DE248  90 1E 00 0C */	stw r0, 0xc(r30)
/* 804DE24C  38 7E 00 14 */	addi r3, r30, 0x14
/* 804DE250  38 80 FF FF */	li r4, -1
/* 804DE254  4B D9 0C C4 */	b __dt__8cM3dGCirFv
/* 804DE258  7F C3 F3 78 */	mr r3, r30
/* 804DE25C  38 80 00 00 */	li r4, 0
/* 804DE260  4B D8 9E 50 */	b __dt__13cBgS_PolyInfoFv
/* 804DE264  7F E0 07 35 */	extsh. r0, r31
/* 804DE268  40 81 00 0C */	ble lbl_804DE274
/* 804DE26C  7F C3 F3 78 */	mr r3, r30
/* 804DE270  4B DF 0A CC */	b __dl__FPv
lbl_804DE274:
/* 804DE274  7F C3 F3 78 */	mr r3, r30
/* 804DE278  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DE27C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804DE280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DE284  7C 08 03 A6 */	mtlr r0
/* 804DE288  38 21 00 10 */	addi r1, r1, 0x10
/* 804DE28C  4E 80 00 20 */	blr 
