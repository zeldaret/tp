lbl_80BC8238:
/* 80BC8238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC823C  7C 08 02 A6 */	mflr r0
/* 80BC8240  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC8244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC8248  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC824C  7C 7E 1B 78 */	mr r30, r3
/* 80BC8250  7C 9F 23 78 */	mr r31, r4
/* 80BC8254  88 03 06 09 */	lbz r0, 0x609(r3)
/* 80BC8258  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80BC825C  3C 60 80 BD */	lis r3, s_exeProc__17daObjChandelier_c@ha
/* 80BC8260  38 03 8D A4 */	addi r0, r3, s_exeProc__17daObjChandelier_c@l
/* 80BC8264  7C 60 22 14 */	add r3, r0, r4
/* 80BC8268  4B 79 9D B0 */	b __ptmf_test
/* 80BC826C  2C 03 00 00 */	cmpwi r3, 0
/* 80BC8270  41 82 00 24 */	beq lbl_80BC8294
/* 80BC8274  7F C3 F3 78 */	mr r3, r30
/* 80BC8278  88 1E 06 09 */	lbz r0, 0x609(r30)
/* 80BC827C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80BC8280  3C 80 80 BD */	lis r4, s_exeProc__17daObjChandelier_c@ha
/* 80BC8284  38 04 8D A4 */	addi r0, r4, s_exeProc__17daObjChandelier_c@l
/* 80BC8288  7D 80 2A 14 */	add r12, r0, r5
/* 80BC828C  4B 79 9D F8 */	b __ptmf_scall
/* 80BC8290  60 00 00 00 */	nop 
lbl_80BC8294:
/* 80BC8294  7F C3 F3 78 */	mr r3, r30
/* 80BC8298  48 00 04 65 */	bl setModelMtx__17daObjChandelier_cFv
/* 80BC829C  38 1E 05 B4 */	addi r0, r30, 0x5b4
/* 80BC82A0  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC82A4  38 60 00 01 */	li r3, 1
/* 80BC82A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC82AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC82B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC82B4  7C 08 03 A6 */	mtlr r0
/* 80BC82B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC82BC  4E 80 00 20 */	blr 
