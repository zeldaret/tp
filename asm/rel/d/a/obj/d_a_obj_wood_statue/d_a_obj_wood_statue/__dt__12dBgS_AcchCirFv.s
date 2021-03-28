lbl_80D3A808:
/* 80D3A808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3A80C  7C 08 02 A6 */	mflr r0
/* 80D3A810  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3A814  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3A818  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3A81C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D3A820  7C 9F 23 78 */	mr r31, r4
/* 80D3A824  41 82 00 38 */	beq lbl_80D3A85C
/* 80D3A828  3C 60 80 D4 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80D3A82C  38 03 B8 1C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80D3A830  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80D3A834  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D3A838  38 80 FF FF */	li r4, -1
/* 80D3A83C  4B 53 46 DC */	b __dt__8cM3dGCirFv
/* 80D3A840  7F C3 F3 78 */	mr r3, r30
/* 80D3A844  38 80 00 00 */	li r4, 0
/* 80D3A848  4B 52 D8 68 */	b __dt__13cBgS_PolyInfoFv
/* 80D3A84C  7F E0 07 35 */	extsh. r0, r31
/* 80D3A850  40 81 00 0C */	ble lbl_80D3A85C
/* 80D3A854  7F C3 F3 78 */	mr r3, r30
/* 80D3A858  4B 59 44 E4 */	b __dl__FPv
lbl_80D3A85C:
/* 80D3A85C  7F C3 F3 78 */	mr r3, r30
/* 80D3A860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3A864  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3A868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3A86C  7C 08 03 A6 */	mtlr r0
/* 80D3A870  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3A874  4E 80 00 20 */	blr 
