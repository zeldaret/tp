lbl_807BB7EC:
/* 807BB7EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BB7F0  7C 08 02 A6 */	mflr r0
/* 807BB7F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BB7F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BB7FC  7C 7F 1B 78 */	mr r31, r3
/* 807BB800  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807BB804  3C 80 80 7C */	lis r4, stringBase0@ha
/* 807BB808  38 84 BE 20 */	addi r4, r4, stringBase0@l
/* 807BB80C  4B 87 17 FC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807BB810  88 1F 0A 4C */	lbz r0, 0xa4c(r31)
/* 807BB814  28 00 00 00 */	cmplwi r0, 0
/* 807BB818  41 82 00 10 */	beq lbl_807BB828
/* 807BB81C  38 00 00 00 */	li r0, 0
/* 807BB820  3C 60 80 7C */	lis r3, data_807BBF40@ha
/* 807BB824  98 03 BF 40 */	stb r0, data_807BBF40@l(r3)
lbl_807BB828:
/* 807BB828  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807BB82C  28 00 00 00 */	cmplwi r0, 0
/* 807BB830  41 82 00 0C */	beq lbl_807BB83C
/* 807BB834  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807BB838  4B 85 5A D8 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_807BB83C:
/* 807BB83C  38 60 00 01 */	li r3, 1
/* 807BB840  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BB844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BB848  7C 08 03 A6 */	mtlr r0
/* 807BB84C  38 21 00 10 */	addi r1, r1, 0x10
/* 807BB850  4E 80 00 20 */	blr 
