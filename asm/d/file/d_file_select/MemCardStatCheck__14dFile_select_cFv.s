lbl_8018E504:
/* 8018E504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018E508  7C 08 02 A6 */	mflr r0
/* 8018E50C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018E510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018E514  93 C1 00 08 */	stw r30, 8(r1)
/* 8018E518  7C 7E 1B 78 */	mr r30, r3
/* 8018E51C  3C 60 80 3C */	lis r3, cNullVec__6Z2Calc@ha /* 0x803BA848@ha */
/* 8018E520  3B E3 A8 48 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x803BA848@l */
/* 8018E524  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 8018E528  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 8018E52C  38 80 00 00 */	li r4, 0
/* 8018E530  4B E8 88 45 */	bl getStatus__15mDoMemCd_Ctrl_cFUl
/* 8018E534  28 03 00 0E */	cmplwi r3, 0xe
/* 8018E538  41 82 02 74 */	beq lbl_8018E7AC
/* 8018E53C  28 03 00 0C */	cmplwi r3, 0xc
/* 8018E540  41 81 02 6C */	bgt lbl_8018E7AC
/* 8018E544  3C 80 80 3C */	lis r4, lit_7815@ha /* 0x803BB2AC@ha */
/* 8018E548  38 84 B2 AC */	addi r4, r4, lit_7815@l /* 0x803BB2AC@l */
/* 8018E54C  54 60 10 3A */	slwi r0, r3, 2
/* 8018E550  7C 04 00 2E */	lwzx r0, r4, r0
/* 8018E554  7C 09 03 A6 */	mtctr r0
/* 8018E558  4E 80 04 20 */	bctr 
/* 8018E55C  7F C3 F3 78 */	mr r3, r30
/* 8018E560  38 80 00 02 */	li r4, 2
/* 8018E564  38 A0 00 00 */	li r5, 0
/* 8018E568  4B FF FD 4D */	bl errDispInitSet__14dFile_select_cFii
/* 8018E56C  38 00 00 00 */	li r0, 0
/* 8018E570  98 1E 02 80 */	stb r0, 0x280(r30)
/* 8018E574  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 8018E578  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 8018E57C  80 64 00 00 */	lwz r3, 0(r4)
/* 8018E580  80 04 00 04 */	lwz r0, 4(r4)
/* 8018E584  90 7E 02 84 */	stw r3, 0x284(r30)
/* 8018E588  90 1E 02 88 */	stw r0, 0x288(r30)
/* 8018E58C  80 04 00 08 */	lwz r0, 8(r4)
/* 8018E590  90 1E 02 8C */	stw r0, 0x28c(r30)
/* 8018E594  38 00 00 02 */	li r0, 2
/* 8018E598  98 1E 02 73 */	stb r0, 0x273(r30)
/* 8018E59C  80 7F 0A 28 */	lwz r3, 0xa28(r31)
/* 8018E5A0  80 1F 0A 2C */	lwz r0, 0xa2c(r31)
/* 8018E5A4  90 7E 02 90 */	stw r3, 0x290(r30)
/* 8018E5A8  90 1E 02 94 */	stw r0, 0x294(r30)
/* 8018E5AC  80 1F 0A 30 */	lwz r0, 0xa30(r31)
/* 8018E5B0  90 1E 02 98 */	stw r0, 0x298(r30)
/* 8018E5B4  38 00 00 03 */	li r0, 3
/* 8018E5B8  98 1E 02 74 */	stb r0, 0x274(r30)
/* 8018E5BC  48 00 01 F0 */	b lbl_8018E7AC
/* 8018E5C0  7F C3 F3 78 */	mr r3, r30
/* 8018E5C4  38 80 00 03 */	li r4, 3
/* 8018E5C8  38 A0 00 00 */	li r5, 0
/* 8018E5CC  4B FF FC E9 */	bl errDispInitSet__14dFile_select_cFii
/* 8018E5D0  38 00 00 00 */	li r0, 0
/* 8018E5D4  98 1E 02 80 */	stb r0, 0x280(r30)
/* 8018E5D8  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 8018E5DC  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 8018E5E0  80 64 00 00 */	lwz r3, 0(r4)
/* 8018E5E4  80 04 00 04 */	lwz r0, 4(r4)
/* 8018E5E8  90 7E 02 84 */	stw r3, 0x284(r30)
/* 8018E5EC  90 1E 02 88 */	stw r0, 0x288(r30)
/* 8018E5F0  80 04 00 08 */	lwz r0, 8(r4)
/* 8018E5F4  90 1E 02 8C */	stw r0, 0x28c(r30)
/* 8018E5F8  38 00 00 02 */	li r0, 2
/* 8018E5FC  98 1E 02 73 */	stb r0, 0x273(r30)
/* 8018E600  80 7F 0A 34 */	lwz r3, 0xa34(r31)
/* 8018E604  80 1F 0A 38 */	lwz r0, 0xa38(r31)
/* 8018E608  90 7E 02 90 */	stw r3, 0x290(r30)
/* 8018E60C  90 1E 02 94 */	stw r0, 0x294(r30)
/* 8018E610  80 1F 0A 3C */	lwz r0, 0xa3c(r31)
/* 8018E614  90 1E 02 98 */	stw r0, 0x298(r30)
/* 8018E618  38 00 00 03 */	li r0, 3
/* 8018E61C  98 1E 02 74 */	stb r0, 0x274(r30)
/* 8018E620  48 00 01 8C */	b lbl_8018E7AC
/* 8018E624  7F C3 F3 78 */	mr r3, r30
/* 8018E628  38 80 00 04 */	li r4, 4
/* 8018E62C  38 A0 00 00 */	li r5, 0
/* 8018E630  4B FF FC 85 */	bl errDispInitSet__14dFile_select_cFii
/* 8018E634  38 00 00 00 */	li r0, 0
/* 8018E638  98 1E 02 80 */	stb r0, 0x280(r30)
/* 8018E63C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 8018E640  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 8018E644  80 64 00 00 */	lwz r3, 0(r4)
/* 8018E648  80 04 00 04 */	lwz r0, 4(r4)
/* 8018E64C  90 7E 02 84 */	stw r3, 0x284(r30)
/* 8018E650  90 1E 02 88 */	stw r0, 0x288(r30)
/* 8018E654  80 04 00 08 */	lwz r0, 8(r4)
/* 8018E658  90 1E 02 8C */	stw r0, 0x28c(r30)
/* 8018E65C  38 00 00 02 */	li r0, 2
/* 8018E660  98 1E 02 73 */	stb r0, 0x273(r30)
/* 8018E664  80 7F 0A 40 */	lwz r3, 0xa40(r31)
/* 8018E668  80 1F 0A 44 */	lwz r0, 0xa44(r31)
/* 8018E66C  90 7E 02 90 */	stw r3, 0x290(r30)
/* 8018E670  90 1E 02 94 */	stw r0, 0x294(r30)
/* 8018E674  80 1F 0A 48 */	lwz r0, 0xa48(r31)
/* 8018E678  90 1E 02 98 */	stw r0, 0x298(r30)
/* 8018E67C  38 00 00 03 */	li r0, 3
/* 8018E680  98 1E 02 74 */	stb r0, 0x274(r30)
/* 8018E684  48 00 01 28 */	b lbl_8018E7AC
/* 8018E688  7F C3 F3 78 */	mr r3, r30
/* 8018E68C  38 80 00 05 */	li r4, 5
/* 8018E690  38 A0 00 00 */	li r5, 0
/* 8018E694  4B FF FC 21 */	bl errDispInitSet__14dFile_select_cFii
/* 8018E698  38 00 00 00 */	li r0, 0
/* 8018E69C  98 1E 02 80 */	stb r0, 0x280(r30)
/* 8018E6A0  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 8018E6A4  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 8018E6A8  80 64 00 00 */	lwz r3, 0(r4)
/* 8018E6AC  80 04 00 04 */	lwz r0, 4(r4)
/* 8018E6B0  90 7E 02 84 */	stw r3, 0x284(r30)
/* 8018E6B4  90 1E 02 88 */	stw r0, 0x288(r30)
/* 8018E6B8  80 04 00 08 */	lwz r0, 8(r4)
/* 8018E6BC  90 1E 02 8C */	stw r0, 0x28c(r30)
/* 8018E6C0  38 00 00 02 */	li r0, 2
/* 8018E6C4  98 1E 02 73 */	stb r0, 0x273(r30)
/* 8018E6C8  80 7F 0A 4C */	lwz r3, 0xa4c(r31)
/* 8018E6CC  80 1F 0A 50 */	lwz r0, 0xa50(r31)
/* 8018E6D0  90 7E 02 90 */	stw r3, 0x290(r30)
/* 8018E6D4  90 1E 02 94 */	stw r0, 0x294(r30)
/* 8018E6D8  80 1F 0A 54 */	lwz r0, 0xa54(r31)
/* 8018E6DC  90 1E 02 98 */	stw r0, 0x298(r30)
/* 8018E6E0  38 00 00 03 */	li r0, 3
/* 8018E6E4  98 1E 02 74 */	stb r0, 0x274(r30)
/* 8018E6E8  48 00 00 C4 */	b lbl_8018E7AC
/* 8018E6EC  7F C3 F3 78 */	mr r3, r30
/* 8018E6F0  38 80 00 06 */	li r4, 6
/* 8018E6F4  38 A0 00 00 */	li r5, 0
/* 8018E6F8  4B FF FB BD */	bl errDispInitSet__14dFile_select_cFii
/* 8018E6FC  38 00 00 01 */	li r0, 1
/* 8018E700  98 1E 02 80 */	stb r0, 0x280(r30)
/* 8018E704  38 00 00 05 */	li r0, 5
/* 8018E708  98 1E 02 73 */	stb r0, 0x273(r30)
/* 8018E70C  48 00 00 A0 */	b lbl_8018E7AC
/* 8018E710  7F C3 F3 78 */	mr r3, r30
/* 8018E714  38 80 00 09 */	li r4, 9
/* 8018E718  38 A0 00 00 */	li r5, 0
/* 8018E71C  4B FF FB 99 */	bl errDispInitSet__14dFile_select_cFii
/* 8018E720  38 00 00 00 */	li r0, 0
/* 8018E724  98 1E 02 80 */	stb r0, 0x280(r30)
/* 8018E728  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 8018E72C  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 8018E730  80 64 00 00 */	lwz r3, 0(r4)
/* 8018E734  80 04 00 04 */	lwz r0, 4(r4)
/* 8018E738  90 7E 02 84 */	stw r3, 0x284(r30)
/* 8018E73C  90 1E 02 88 */	stw r0, 0x288(r30)
/* 8018E740  80 04 00 08 */	lwz r0, 8(r4)
/* 8018E744  90 1E 02 8C */	stw r0, 0x28c(r30)
/* 8018E748  38 00 00 02 */	li r0, 2
/* 8018E74C  98 1E 02 73 */	stb r0, 0x273(r30)
/* 8018E750  80 7F 0A 58 */	lwz r3, 0xa58(r31)
/* 8018E754  80 1F 0A 5C */	lwz r0, 0xa5c(r31)
/* 8018E758  90 7E 02 90 */	stw r3, 0x290(r30)
/* 8018E75C  90 1E 02 94 */	stw r0, 0x294(r30)
/* 8018E760  80 1F 0A 60 */	lwz r0, 0xa60(r31)
/* 8018E764  90 1E 02 98 */	stw r0, 0x298(r30)
/* 8018E768  38 00 00 12 */	li r0, 0x12
/* 8018E76C  98 1E 02 74 */	stb r0, 0x274(r30)
/* 8018E770  48 00 00 3C */	b lbl_8018E7AC
/* 8018E774  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 8018E778  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 8018E77C  4B E8 82 39 */	bl load__15mDoMemCd_Ctrl_cFv
/* 8018E780  38 00 00 01 */	li r0, 1
/* 8018E784  98 1E 02 71 */	stb r0, 0x271(r30)
/* 8018E788  48 00 00 24 */	b lbl_8018E7AC
/* 8018E78C  7F C3 F3 78 */	mr r3, r30
/* 8018E790  38 80 00 16 */	li r4, 0x16
/* 8018E794  38 A0 00 00 */	li r5, 0
/* 8018E798  4B FF FB 1D */	bl errDispInitSet__14dFile_select_cFii
/* 8018E79C  38 00 00 01 */	li r0, 1
/* 8018E7A0  98 1E 02 80 */	stb r0, 0x280(r30)
/* 8018E7A4  38 00 00 0D */	li r0, 0xd
/* 8018E7A8  98 1E 02 73 */	stb r0, 0x273(r30)
lbl_8018E7AC:
/* 8018E7AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018E7B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8018E7B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018E7B8  7C 08 03 A6 */	mtlr r0
/* 8018E7BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8018E7C0  4E 80 00 20 */	blr 
