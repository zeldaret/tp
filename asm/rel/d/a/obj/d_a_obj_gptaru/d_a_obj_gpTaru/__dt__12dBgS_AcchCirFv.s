lbl_8057D6EC:
/* 8057D6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D6F0  7C 08 02 A6 */	mflr r0
/* 8057D6F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D6F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D6FC  93 C1 00 08 */	stw r30, 8(r1)
/* 8057D700  7C 7E 1B 79 */	or. r30, r3, r3
/* 8057D704  7C 9F 23 78 */	mr r31, r4
/* 8057D708  41 82 00 38 */	beq lbl_8057D740
/* 8057D70C  3C 60 80 58 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8057D710  38 03 F8 30 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8057D714  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8057D718  38 7E 00 14 */	addi r3, r30, 0x14
/* 8057D71C  38 80 FF FF */	li r4, -1
/* 8057D720  4B CF 17 F8 */	b __dt__8cM3dGCirFv
/* 8057D724  7F C3 F3 78 */	mr r3, r30
/* 8057D728  38 80 00 00 */	li r4, 0
/* 8057D72C  4B CE A9 84 */	b __dt__13cBgS_PolyInfoFv
/* 8057D730  7F E0 07 35 */	extsh. r0, r31
/* 8057D734  40 81 00 0C */	ble lbl_8057D740
/* 8057D738  7F C3 F3 78 */	mr r3, r30
/* 8057D73C  4B D5 16 00 */	b __dl__FPv
lbl_8057D740:
/* 8057D740  7F C3 F3 78 */	mr r3, r30
/* 8057D744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D748  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057D74C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D750  7C 08 03 A6 */	mtlr r0
/* 8057D754  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D758  4E 80 00 20 */	blr 
