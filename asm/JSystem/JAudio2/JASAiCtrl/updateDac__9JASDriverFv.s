lbl_8029C568:
/* 8029C568  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029C56C  7C 08 02 A6 */	mflr r0
/* 8029C570  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029C574  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8029C578  88 0D 8D 4C */	lbz r0, data_804512CC(r13)
/* 8029C57C  7C 00 07 75 */	extsb. r0, r0
/* 8029C580  40 82 00 14 */	bne lbl_8029C594
/* 8029C584  38 00 00 00 */	li r0, 0
/* 8029C588  90 0D 8D 48 */	stw r0, dacp(r13)
/* 8029C58C  38 00 00 01 */	li r0, 1
/* 8029C590  98 0D 8D 4C */	stb r0, data_804512CC(r13)
lbl_8029C594:
/* 8029C594  83 ED 8D 34 */	lwz r31, lastRspMadep__9JASDriver(r13)
/* 8029C598  38 00 00 00 */	li r0, 0
/* 8029C59C  90 0D 8D 34 */	stw r0, lastRspMadep__9JASDriver(r13)
/* 8029C5A0  28 1F 00 00 */	cmplwi r31, 0
/* 8029C5A4  41 82 00 14 */	beq lbl_8029C5B8
/* 8029C5A8  48 00 04 51 */	bl getDacSize__9JASDriverFv
/* 8029C5AC  54 64 08 3C */	slwi r4, r3, 1
/* 8029C5B0  7F E3 FB 78 */	mr r3, r31
/* 8029C5B4  48 0B 37 01 */	bl AIInitDMA
lbl_8029C5B8:
/* 8029C5B8  48 00 04 4D */	bl getFrameSamples__9JASDriverFv
/* 8029C5BC  7C 64 1B 78 */	mr r4, r3
/* 8029C5C0  80 0D 8D 48 */	lwz r0, dacp(r13)
/* 8029C5C4  54 00 10 3A */	slwi r0, r0, 2
/* 8029C5C8  3C 60 80 43 */	lis r3, sDmaDacBuffer__9JASDriver@ha /* 0x80431C58@ha */
/* 8029C5CC  38 63 1C 58 */	addi r3, r3, sDmaDacBuffer__9JASDriver@l /* 0x80431C58@l */
/* 8029C5D0  7C 63 00 2E */	lwzx r3, r3, r0
/* 8029C5D4  7C 9F 23 78 */	mr r31, r4
/* 8029C5D8  48 00 02 09 */	bl readDspBuffer__9JASDriverFPsUl
/* 8029C5DC  80 0D 8D 2C */	lwz r0, sDspStatus__9JASDriver(r13)
/* 8029C5E0  2C 00 00 00 */	cmpwi r0, 0
/* 8029C5E4  40 82 00 08 */	bne lbl_8029C5EC
/* 8029C5E8  48 00 03 19 */	bl finishDSPFrame__9JASDriverFv
lbl_8029C5EC:
/* 8029C5EC  80 AD 8D 3C */	lwz r5, extMixCallback__9JASDriver(r13)
/* 8029C5F0  28 05 00 00 */	cmplwi r5, 0
/* 8029C5F4  41 82 00 38 */	beq lbl_8029C62C
/* 8029C5F8  80 0D 8D 48 */	lwz r0, dacp(r13)
/* 8029C5FC  54 00 10 3A */	slwi r0, r0, 2
/* 8029C600  3C 60 80 43 */	lis r3, sDmaDacBuffer__9JASDriver@ha /* 0x80431C58@ha */
/* 8029C604  38 63 1C 58 */	addi r3, r3, sDmaDacBuffer__9JASDriver@l /* 0x80431C58@l */
/* 8029C608  7C 63 00 2E */	lwzx r3, r3, r0
/* 8029C60C  7F E4 FB 78 */	mr r4, r31
/* 8029C610  80 0D 82 2C */	lwz r0, sMixMode__9JASDriver(r13)
/* 8029C614  54 00 10 3A */	slwi r0, r0, 2
/* 8029C618  3C C0 80 3A */	lis r6, sMixFuncs__9JASDriver@ha /* 0x8039B2E0@ha */
/* 8029C61C  38 C6 B2 E0 */	addi r6, r6, sMixFuncs__9JASDriver@l /* 0x8039B2E0@l */
/* 8029C620  7D 86 00 2E */	lwzx r12, r6, r0
/* 8029C624  7D 89 03 A6 */	mtctr r12
/* 8029C628  4E 80 04 21 */	bctrl 
lbl_8029C62C:
/* 8029C62C  48 0A 10 C9 */	bl OSDisableInterrupts
/* 8029C630  90 61 00 08 */	stw r3, 8(r1)
/* 8029C634  48 00 03 C5 */	bl getDacSize__9JASDriverFv
/* 8029C638  54 64 08 3C */	slwi r4, r3, 1
/* 8029C63C  80 0D 8D 48 */	lwz r0, dacp(r13)
/* 8029C640  54 00 10 3A */	slwi r0, r0, 2
/* 8029C644  3C 60 80 43 */	lis r3, sDmaDacBuffer__9JASDriver@ha /* 0x80431C58@ha */
/* 8029C648  38 63 1C 58 */	addi r3, r3, sDmaDacBuffer__9JASDriver@l /* 0x80431C58@l */
/* 8029C64C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8029C650  48 09 EF 8D */	bl DCStoreRange
/* 8029C654  80 61 00 08 */	lwz r3, 8(r1)
/* 8029C658  48 0A 10 C5 */	bl OSRestoreInterrupts
/* 8029C65C  80 8D 8D 48 */	lwz r4, dacp(r13)
/* 8029C660  54 80 10 3A */	slwi r0, r4, 2
/* 8029C664  3C 60 80 43 */	lis r3, sDmaDacBuffer__9JASDriver@ha /* 0x80431C58@ha */
/* 8029C668  38 63 1C 58 */	addi r3, r3, sDmaDacBuffer__9JASDriver@l /* 0x80431C58@l */
/* 8029C66C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8029C670  90 0D 8D 34 */	stw r0, lastRspMadep__9JASDriver(r13)
/* 8029C674  38 04 00 01 */	addi r0, r4, 1
/* 8029C678  90 0D 8D 48 */	stw r0, dacp(r13)
/* 8029C67C  28 00 00 03 */	cmplwi r0, 3
/* 8029C680  41 80 00 0C */	blt lbl_8029C68C
/* 8029C684  38 00 00 00 */	li r0, 0
/* 8029C688  90 0D 8D 48 */	stw r0, dacp(r13)
lbl_8029C68C:
/* 8029C68C  80 0D 8D 38 */	lwz r0, dacCallbackFunc__9JASDriver(r13)
/* 8029C690  28 00 00 00 */	cmplwi r0, 0
/* 8029C694  41 82 00 1C */	beq lbl_8029C6B0
/* 8029C698  48 00 03 6D */	bl getFrameSamples__9JASDriverFv
/* 8029C69C  7C 64 1B 78 */	mr r4, r3
/* 8029C6A0  80 6D 8D 34 */	lwz r3, lastRspMadep__9JASDriver(r13)
/* 8029C6A4  81 8D 8D 38 */	lwz r12, dacCallbackFunc__9JASDriver(r13)
/* 8029C6A8  7D 89 03 A6 */	mtctr r12
/* 8029C6AC  4E 80 04 21 */	bctrl 
lbl_8029C6B0:
/* 8029C6B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8029C6B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029C6B8  7C 08 03 A6 */	mtlr r0
/* 8029C6BC  38 21 00 20 */	addi r1, r1, 0x20
/* 8029C6C0  4E 80 00 20 */	blr 
