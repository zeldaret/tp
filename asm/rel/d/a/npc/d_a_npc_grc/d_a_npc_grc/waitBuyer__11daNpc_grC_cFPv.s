lbl_809CE688:
/* 809CE688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CE68C  7C 08 02 A6 */	mflr r0
/* 809CE690  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CE694  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CE698  7C 7F 1B 78 */	mr r31, r3
/* 809CE69C  A0 03 0E 46 */	lhz r0, 0xe46(r3)
/* 809CE6A0  2C 00 00 02 */	cmpwi r0, 2
/* 809CE6A4  41 82 00 8C */	beq lbl_809CE730
/* 809CE6A8  40 80 01 04 */	bge lbl_809CE7AC
/* 809CE6AC  2C 00 00 00 */	cmpwi r0, 0
/* 809CE6B0  41 82 00 0C */	beq lbl_809CE6BC
/* 809CE6B4  48 00 00 F8 */	b lbl_809CE7AC
/* 809CE6B8  48 00 00 F4 */	b lbl_809CE7AC
lbl_809CE6BC:
/* 809CE6BC  88 1F 0E 51 */	lbz r0, 0xe51(r31)
/* 809CE6C0  28 00 00 00 */	cmplwi r0, 0
/* 809CE6C4  40 82 00 50 */	bne lbl_809CE714
/* 809CE6C8  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 809CE6CC  2C 00 00 05 */	cmpwi r0, 5
/* 809CE6D0  41 82 00 44 */	beq lbl_809CE714
/* 809CE6D4  38 80 00 0E */	li r4, 0xe
/* 809CE6D8  3C A0 80 9D */	lis r5, lit_5043@ha
/* 809CE6DC  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)
/* 809CE6E0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809CE6E4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809CE6E8  7D 89 03 A6 */	mtctr r12
/* 809CE6EC  4E 80 04 21 */	bctrl 
/* 809CE6F0  7F E3 FB 78 */	mr r3, r31
/* 809CE6F4  38 80 00 04 */	li r4, 4
/* 809CE6F8  3C A0 80 9D */	lis r5, lit_5043@ha
/* 809CE6FC  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)
/* 809CE700  38 A0 00 00 */	li r5, 0
/* 809CE704  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809CE708  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809CE70C  7D 89 03 A6 */	mtctr r12
/* 809CE710  4E 80 04 21 */	bctrl 
lbl_809CE714:
/* 809CE714  38 00 00 00 */	li r0, 0
/* 809CE718  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809CE71C  38 60 00 01 */	li r3, 1
/* 809CE720  98 7F 09 EA */	stb r3, 0x9ea(r31)
/* 809CE724  38 00 00 02 */	li r0, 2
/* 809CE728  B0 1F 0E 46 */	sth r0, 0xe46(r31)
/* 809CE72C  98 7F 09 EA */	stb r3, 0x9ea(r31)
lbl_809CE730:
/* 809CE730  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 809CE734  28 00 00 00 */	cmplwi r0, 0
/* 809CE738  40 82 00 74 */	bne lbl_809CE7AC
/* 809CE73C  38 7F 0C B0 */	addi r3, r31, 0xcb0
/* 809CE740  4B 78 1F AC */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809CE744  28 03 00 00 */	cmplwi r3, 0
/* 809CE748  41 82 00 20 */	beq lbl_809CE768
/* 809CE74C  7F E3 FB 78 */	mr r3, r31
/* 809CE750  4B FF F8 AD */	bl chkFindPlayer__11daNpc_grC_cFv
/* 809CE754  2C 03 00 00 */	cmpwi r3, 0
/* 809CE758  40 82 00 28 */	bne lbl_809CE780
/* 809CE75C  38 00 00 00 */	li r0, 0
/* 809CE760  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809CE764  48 00 00 1C */	b lbl_809CE780
lbl_809CE768:
/* 809CE768  7F E3 FB 78 */	mr r3, r31
/* 809CE76C  4B FF F8 91 */	bl chkFindPlayer__11daNpc_grC_cFv
/* 809CE770  2C 03 00 00 */	cmpwi r3, 0
/* 809CE774  41 82 00 0C */	beq lbl_809CE780
/* 809CE778  38 00 00 00 */	li r0, 0
/* 809CE77C  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809CE780:
/* 809CE780  38 7F 0C B0 */	addi r3, r31, 0xcb0
/* 809CE784  4B 78 1F 68 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809CE788  28 03 00 00 */	cmplwi r3, 0
/* 809CE78C  41 82 00 14 */	beq lbl_809CE7A0
/* 809CE790  7F E3 FB 78 */	mr r3, r31
/* 809CE794  38 80 00 02 */	li r4, 2
/* 809CE798  4B FF F5 B9 */	bl setLookMode__11daNpc_grC_cFi
/* 809CE79C  48 00 00 10 */	b lbl_809CE7AC
lbl_809CE7A0:
/* 809CE7A0  7F E3 FB 78 */	mr r3, r31
/* 809CE7A4  38 80 00 00 */	li r4, 0
/* 809CE7A8  4B FF F5 A9 */	bl setLookMode__11daNpc_grC_cFi
lbl_809CE7AC:
/* 809CE7AC  38 60 00 01 */	li r3, 1
/* 809CE7B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CE7B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CE7B8  7C 08 03 A6 */	mtlr r0
/* 809CE7BC  38 21 00 10 */	addi r1, r1, 0x10
/* 809CE7C0  4E 80 00 20 */	blr 
