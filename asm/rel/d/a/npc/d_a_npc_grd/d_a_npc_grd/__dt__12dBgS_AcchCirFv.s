lbl_809D3720:
/* 809D3720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D3724  7C 08 02 A6 */	mflr r0
/* 809D3728  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D372C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D3730  93 C1 00 08 */	stw r30, 8(r1)
/* 809D3734  7C 7E 1B 79 */	or. r30, r3, r3
/* 809D3738  7C 9F 23 78 */	mr r31, r4
/* 809D373C  41 82 00 38 */	beq lbl_809D3774
/* 809D3740  3C 60 80 9D */	lis r3, __vt__12dBgS_AcchCir@ha
/* 809D3744  38 03 3E 60 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 809D3748  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809D374C  38 7E 00 14 */	addi r3, r30, 0x14
/* 809D3750  38 80 FF FF */	li r4, -1
/* 809D3754  4B 89 B7 C4 */	b __dt__8cM3dGCirFv
/* 809D3758  7F C3 F3 78 */	mr r3, r30
/* 809D375C  38 80 00 00 */	li r4, 0
/* 809D3760  4B 89 49 50 */	b __dt__13cBgS_PolyInfoFv
/* 809D3764  7F E0 07 35 */	extsh. r0, r31
/* 809D3768  40 81 00 0C */	ble lbl_809D3774
/* 809D376C  7F C3 F3 78 */	mr r3, r30
/* 809D3770  4B 8F B5 CC */	b __dl__FPv
lbl_809D3774:
/* 809D3774  7F C3 F3 78 */	mr r3, r30
/* 809D3778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D377C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D3780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D3784  7C 08 03 A6 */	mtlr r0
/* 809D3788  38 21 00 10 */	addi r1, r1, 0x10
/* 809D378C  4E 80 00 20 */	blr 
