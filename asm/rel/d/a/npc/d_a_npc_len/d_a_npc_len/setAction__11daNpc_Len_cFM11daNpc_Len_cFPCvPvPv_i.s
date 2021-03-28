lbl_80A66030:
/* 80A66030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A66034  7C 08 02 A6 */	mflr r0
/* 80A66038  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6603C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A66040  93 C1 00 08 */	stw r30, 8(r1)
/* 80A66044  7C 7E 1B 78 */	mr r30, r3
/* 80A66048  7C 9F 23 78 */	mr r31, r4
/* 80A6604C  38 00 00 03 */	li r0, 3
/* 80A66050  B0 03 0E 22 */	sth r0, 0xe22(r3)
/* 80A66054  38 7E 0F D8 */	addi r3, r30, 0xfd8
/* 80A66058  4B 8F BF C0 */	b __ptmf_test
/* 80A6605C  2C 03 00 00 */	cmpwi r3, 0
/* 80A66060  41 82 00 18 */	beq lbl_80A66078
/* 80A66064  7F C3 F3 78 */	mr r3, r30
/* 80A66068  38 80 00 00 */	li r4, 0
/* 80A6606C  39 9E 0F D8 */	addi r12, r30, 0xfd8
/* 80A66070  4B 8F C0 14 */	b __ptmf_scall
/* 80A66074  60 00 00 00 */	nop 
lbl_80A66078:
/* 80A66078  38 00 00 00 */	li r0, 0
/* 80A6607C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A66080  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A66084  80 1F 00 04 */	lwz r0, 4(r31)
/* 80A66088  90 7E 0F D8 */	stw r3, 0xfd8(r30)
/* 80A6608C  90 1E 0F DC */	stw r0, 0xfdc(r30)
/* 80A66090  80 1F 00 08 */	lwz r0, 8(r31)
/* 80A66094  90 1E 0F E0 */	stw r0, 0xfe0(r30)
/* 80A66098  38 7E 0F D8 */	addi r3, r30, 0xfd8
/* 80A6609C  4B 8F BF 7C */	b __ptmf_test
/* 80A660A0  2C 03 00 00 */	cmpwi r3, 0
/* 80A660A4  41 82 00 18 */	beq lbl_80A660BC
/* 80A660A8  7F C3 F3 78 */	mr r3, r30
/* 80A660AC  38 80 00 00 */	li r4, 0
/* 80A660B0  39 9E 0F D8 */	addi r12, r30, 0xfd8
/* 80A660B4  4B 8F BF D0 */	b __ptmf_scall
/* 80A660B8  60 00 00 00 */	nop 
lbl_80A660BC:
/* 80A660BC  38 60 00 01 */	li r3, 1
/* 80A660C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A660C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A660C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A660CC  7C 08 03 A6 */	mtlr r0
/* 80A660D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A660D4  4E 80 00 20 */	blr 
