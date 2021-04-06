lbl_800ECB58:
/* 800ECB58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ECB5C  7C 08 02 A6 */	mflr r0
/* 800ECB60  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ECB64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800ECB68  93 C1 00 08 */	stw r30, 8(r1)
/* 800ECB6C  7C 7E 1B 78 */	mr r30, r3
/* 800ECB70  4B FF FE CD */	bl commonInitForceRideRein__9daAlink_cFv
/* 800ECB74  38 00 00 01 */	li r0, 1
/* 800ECB78  98 1E 2F AA */	stb r0, 0x2faa(r30)
/* 800ECB7C  38 7E 28 14 */	addi r3, r30, 0x2814
/* 800ECB80  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800ECB84  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800ECB88  80 9F 5D B8 */	lwz r4, 0x5db8(r31)
/* 800ECB8C  48 07 21 2D */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800ECB90  3C 60 80 42 */	lis r3, l_horseBaseAnime@ha /* 0x8042558C@ha */
/* 800ECB94  38 03 55 8C */	addi r0, r3, l_horseBaseAnime@l /* 0x8042558C@l */
/* 800ECB98  90 1E 38 4C */	stw r0, 0x384c(r30)
/* 800ECB9C  80 7F 5D B8 */	lwz r3, 0x5db8(r31)
/* 800ECBA0  39 83 18 EC */	addi r12, r3, 0x18ec
/* 800ECBA4  48 27 54 E1 */	bl __ptmf_scall
/* 800ECBA8  60 00 00 00 */	nop 
/* 800ECBAC  38 7E 2C A8 */	addi r3, r30, 0x2ca8
/* 800ECBB0  38 80 00 01 */	li r4, 1
/* 800ECBB4  48 1D 6E B9 */	bl setRiding__14Z2CreatureLinkFb
/* 800ECBB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800ECBBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800ECBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ECBC4  7C 08 03 A6 */	mtlr r0
/* 800ECBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 800ECBCC  4E 80 00 20 */	blr 
