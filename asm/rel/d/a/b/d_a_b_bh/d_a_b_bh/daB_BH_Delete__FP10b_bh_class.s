lbl_805B2848:
/* 805B2848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B284C  7C 08 02 A6 */	mflr r0
/* 805B2850  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B2854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B2858  7C 7F 1B 78 */	mr r31, r3
/* 805B285C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 805B2860  3C 80 80 5B */	lis r4, stringBase0@ha
/* 805B2864  38 84 32 2C */	addi r4, r4, stringBase0@l
/* 805B2868  4B A7 A7 A0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805B286C  88 1F 0F 48 */	lbz r0, 0xf48(r31)
/* 805B2870  28 00 00 00 */	cmplwi r0, 0
/* 805B2874  41 82 00 10 */	beq lbl_805B2884
/* 805B2878  38 00 00 00 */	li r0, 0
/* 805B287C  3C 60 80 5B */	lis r3, struct_805B33EC+0x1@ha
/* 805B2880  98 03 33 ED */	stb r0, struct_805B33EC+0x1@l(r3)
lbl_805B2884:
/* 805B2884  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 805B2888  28 00 00 00 */	cmplwi r0, 0
/* 805B288C  41 82 00 0C */	beq lbl_805B2898
/* 805B2890  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805B2894  4B A5 EA 7C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_805B2898:
/* 805B2898  38 60 00 01 */	li r3, 1
/* 805B289C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B28A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B28A4  7C 08 03 A6 */	mtlr r0
/* 805B28A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805B28AC  4E 80 00 20 */	blr 
