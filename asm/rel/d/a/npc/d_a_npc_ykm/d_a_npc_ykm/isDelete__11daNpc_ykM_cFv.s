lbl_80B54808:
/* 80B54808  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5480C  7C 08 02 A6 */	mflr r0
/* 80B54810  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B54814  88 03 14 74 */	lbz r0, 0x1474(r3)
/* 80B54818  28 00 00 06 */	cmplwi r0, 6
/* 80B5481C  41 81 00 78 */	bgt lbl_80B54894
/* 80B54820  3C 60 80 B6 */	lis r3, lit_4854@ha
/* 80B54824  38 63 E8 40 */	addi r3, r3, lit_4854@l
/* 80B54828  54 00 10 3A */	slwi r0, r0, 2
/* 80B5482C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B54830  7C 09 03 A6 */	mtctr r0
/* 80B54834  4E 80 04 20 */	bctr 
lbl_80B54838:
/* 80B54838  38 60 00 00 */	li r3, 0
/* 80B5483C  48 00 00 5C */	b lbl_80B54898
lbl_80B54840:
/* 80B54840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B54844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B54848  38 63 09 58 */	addi r3, r3, 0x958
/* 80B5484C  38 80 00 02 */	li r4, 2
/* 80B54850  4B 4E 00 E4 */	b isDungeonItem__12dSv_memBit_cCFi
/* 80B54854  48 00 00 44 */	b lbl_80B54898
lbl_80B54858:
/* 80B54858  38 60 01 34 */	li r3, 0x134
/* 80B5485C  4B 5F 82 50 */	b daNpcT_chkEvtBit__FUl
/* 80B54860  48 00 00 38 */	b lbl_80B54898
lbl_80B54864:
/* 80B54864  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B54868  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B5486C  38 63 09 58 */	addi r3, r3, 0x958
/* 80B54870  38 80 00 03 */	li r4, 3
/* 80B54874  4B 4E 00 C0 */	b isDungeonItem__12dSv_memBit_cCFi
/* 80B54878  48 00 00 20 */	b lbl_80B54898
lbl_80B5487C:
/* 80B5487C  38 60 00 00 */	li r3, 0
/* 80B54880  48 00 00 18 */	b lbl_80B54898
lbl_80B54884:
/* 80B54884  38 60 00 00 */	li r3, 0
/* 80B54888  48 00 00 10 */	b lbl_80B54898
lbl_80B5488C:
/* 80B5488C  38 60 00 00 */	li r3, 0
/* 80B54890  48 00 00 08 */	b lbl_80B54898
lbl_80B54894:
/* 80B54894  38 60 00 01 */	li r3, 1
lbl_80B54898:
/* 80B54898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5489C  7C 08 03 A6 */	mtlr r0
/* 80B548A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B548A4  4E 80 00 20 */	blr 
