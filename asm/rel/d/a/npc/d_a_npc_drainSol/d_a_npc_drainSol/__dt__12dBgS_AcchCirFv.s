lbl_809AF708:
/* 809AF708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AF70C  7C 08 02 A6 */	mflr r0
/* 809AF710  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AF714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AF718  93 C1 00 08 */	stw r30, 8(r1)
/* 809AF71C  7C 7E 1B 79 */	or. r30, r3, r3
/* 809AF720  7C 9F 23 78 */	mr r31, r4
/* 809AF724  41 82 00 38 */	beq lbl_809AF75C
/* 809AF728  3C 60 80 9B */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809AFBF8@ha */
/* 809AF72C  38 03 FB F8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809AFBF8@l */
/* 809AF730  90 1E 00 0C */	stw r0, 0xc(r30)
/* 809AF734  38 7E 00 14 */	addi r3, r30, 0x14
/* 809AF738  38 80 FF FF */	li r4, -1
/* 809AF73C  4B 8B F7 DD */	bl __dt__8cM3dGCirFv
/* 809AF740  7F C3 F3 78 */	mr r3, r30
/* 809AF744  38 80 00 00 */	li r4, 0
/* 809AF748  4B 8B 89 69 */	bl __dt__13cBgS_PolyInfoFv
/* 809AF74C  7F E0 07 35 */	extsh. r0, r31
/* 809AF750  40 81 00 0C */	ble lbl_809AF75C
/* 809AF754  7F C3 F3 78 */	mr r3, r30
/* 809AF758  4B 91 F5 E5 */	bl __dl__FPv
lbl_809AF75C:
/* 809AF75C  7F C3 F3 78 */	mr r3, r30
/* 809AF760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AF764  83 C1 00 08 */	lwz r30, 8(r1)
/* 809AF768  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AF76C  7C 08 03 A6 */	mtlr r0
/* 809AF770  38 21 00 10 */	addi r1, r1, 0x10
/* 809AF774  4E 80 00 20 */	blr 
