lbl_80878C28:
/* 80878C28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80878C2C  7C 08 02 A6 */	mflr r0
/* 80878C30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80878C34  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80878C38  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80878C3C  7C 7F 1B 78 */	mr r31, r3
/* 80878C40  38 60 00 01 */	li r3, 1
/* 80878C44  48 00 00 CD */	bl setFrameRate__13mDoGph_gInf_cFUs
/* 80878C48  38 00 00 00 */	li r0, 0
/* 80878C4C  3C 60 80 94 */	lis r3, daMP_Fail_alloc@ha /* 0x80945B08@ha */
/* 80878C50  90 03 5B 08 */	stw r0, daMP_Fail_alloc@l(r3)  /* 0x80945B08@l */
/* 80878C54  7F E3 FB 78 */	mr r3, r31
/* 80878C58  4B FF FF 61 */	bl daMP_c_Get_arg_demoNo__6daMP_cFv
/* 80878C5C  7C 7E 1B 78 */	mr r30, r3
/* 80878C60  7F E3 FB 78 */	mr r3, r31
/* 80878C64  4B FF FF A1 */	bl daMP_c_Get_arg_movieNo__6daMP_cFv
/* 80878C68  7C 66 1B 78 */	mr r6, r3
/* 80878C6C  38 61 00 08 */	addi r3, r1, 8
/* 80878C70  3C 80 80 88 */	lis r4, d_a_movie_player__stringBase0@ha /* 0x8087911C@ha */
/* 80878C74  38 84 91 1C */	addi r4, r4, d_a_movie_player__stringBase0@l /* 0x8087911C@l */
/* 80878C78  38 84 02 F9 */	addi r4, r4, 0x2f9
/* 80878C7C  7F C5 F3 78 */	mr r5, r30
/* 80878C80  4C C6 31 82 */	crclr 6
/* 80878C84  4B AE D8 59 */	bl sprintf
/* 80878C88  38 61 00 08 */	addi r3, r1, 8
/* 80878C8C  4B FF FA CD */	bl daMP_ActivePlayer_Init__FPCc
/* 80878C90  2C 03 00 00 */	cmpwi r3, 0
/* 80878C94  40 82 00 10 */	bne lbl_80878CA4
/* 80878C98  38 00 00 01 */	li r0, 1
/* 80878C9C  3C 60 80 94 */	lis r3, daMP_Fail_alloc@ha /* 0x80945B08@ha */
/* 80878CA0  90 03 5B 08 */	stw r0, daMP_Fail_alloc@l(r3)  /* 0x80945B08@l */
lbl_80878CA4:
/* 80878CA4  3C 60 80 88 */	lis r3, daMP_Get_MovieRestFrame__Fv@ha /* 0x80878A6C@ha */
/* 80878CA8  38 03 8A 6C */	addi r0, r3, daMP_Get_MovieRestFrame__Fv@l /* 0x80878A6C@l */
/* 80878CAC  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80878CB0  3C 60 80 88 */	lis r3, daMP_Set_PercentMovieVolume__Ff@ha /* 0x80878B38@ha */
/* 80878CB4  38 03 8B 38 */	addi r0, r3, daMP_Set_PercentMovieVolume__Ff@l /* 0x80878B38@l */
/* 80878CB8  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80878CBC  3C 60 80 88 */	lis r3, daMP_THPPlayerGetTotalFrame__Fv@ha /* 0x808785F8@ha */
/* 80878CC0  38 03 85 F8 */	addi r0, r3, daMP_THPPlayerGetTotalFrame__Fv@l /* 0x808785F8@l */
/* 80878CC4  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80878CC8  3C 60 80 88 */	lis r3, daMP_THPPlayerPlay__Fv@ha /* 0x808782E4@ha */
/* 80878CCC  38 03 82 E4 */	addi r0, r3, daMP_THPPlayerPlay__Fv@l /* 0x808782E4@l */
/* 80878CD0  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80878CD4  3C 60 80 88 */	lis r3, daMP_THPPlayerStop__Fv@ha /* 0x80878344@ha */
/* 80878CD8  38 03 83 44 */	addi r0, r3, daMP_THPPlayerStop__Fv@l /* 0x80878344@l */
/* 80878CDC  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80878CE0  3C 60 80 88 */	lis r3, daMP_THPPlayerPause__Fv@ha /* 0x808783FC@ha */
/* 80878CE4  38 03 83 FC */	addi r0, r3, daMP_THPPlayerPause__Fv@l /* 0x808783FC@l */
/* 80878CE8  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 80878CEC  3C 60 80 45 */	lis r3, m_myObj__6daMP_c@ha /* 0x80450DB8@ha */
/* 80878CF0  93 E3 0D B8 */	stw r31, m_myObj__6daMP_c@l(r3)  /* 0x80450DB8@l */
/* 80878CF4  38 60 00 04 */	li r3, 4
/* 80878CF8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80878CFC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80878D00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80878D04  7C 08 03 A6 */	mtlr r0
/* 80878D08  38 21 00 30 */	addi r1, r1, 0x30
/* 80878D0C  4E 80 00 20 */	blr 
