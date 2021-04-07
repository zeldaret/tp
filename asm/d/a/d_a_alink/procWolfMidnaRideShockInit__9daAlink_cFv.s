lbl_8012D050:
/* 8012D050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012D054  7C 08 02 A6 */	mflr r0
/* 8012D058  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012D05C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012D060  7C 7F 1B 78 */	mr r31, r3
/* 8012D064  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8012D068  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8012D06C  40 82 00 24 */	bne lbl_8012D090
/* 8012D070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8012D074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012D078  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8012D07C  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8012D080  4B F1 B0 FD */	bl cutEnd__16dEvent_manager_cFi
/* 8012D084  7F E3 FB 78 */	mr r3, r31
/* 8012D088  4B F9 63 31 */	bl procWaitInit__9daAlink_cFv
/* 8012D08C  48 00 00 64 */	b lbl_8012D0F0
lbl_8012D090:
/* 8012D090  38 80 00 F0 */	li r4, 0xf0
/* 8012D094  4B F9 5D 11 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012D098  2C 03 00 00 */	cmpwi r3, 0
/* 8012D09C  40 82 00 0C */	bne lbl_8012D0A8
/* 8012D0A0  38 60 00 00 */	li r3, 0
/* 8012D0A4  48 00 00 4C */	b lbl_8012D0F0
lbl_8012D0A8:
/* 8012D0A8  7F E3 FB 78 */	mr r3, r31
/* 8012D0AC  38 80 00 81 */	li r4, 0x81
/* 8012D0B0  4B FF C5 C9 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8012D0B4  7F E3 FB 78 */	mr r3, r31
/* 8012D0B8  38 80 00 9F */	li r4, 0x9f
/* 8012D0BC  4B F8 27 E5 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 8012D0C0  7F E3 FB 78 */	mr r3, r31
/* 8012D0C4  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100BC@ha */
/* 8012D0C8  38 84 00 BC */	addi r4, r4, 0x00BC /* 0x000100BC@l */
/* 8012D0CC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8012D0D0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8012D0D4  7D 89 03 A6 */	mtctr r12
/* 8012D0D8  4E 80 04 21 */	bctrl 
/* 8012D0DC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012D0E0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8012D0E4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8012D0E8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8012D0EC  38 60 00 01 */	li r3, 1
lbl_8012D0F0:
/* 8012D0F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012D0F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012D0F8  7C 08 03 A6 */	mtlr r0
/* 8012D0FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8012D100  4E 80 00 20 */	blr 
