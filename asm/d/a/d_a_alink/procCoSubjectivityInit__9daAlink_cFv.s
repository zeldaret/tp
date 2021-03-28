lbl_800CED84:
/* 800CED84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CED88  7C 08 02 A6 */	mflr r0
/* 800CED8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CED90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800CED94  7C 7F 1B 78 */	mr r31, r3
/* 800CED98  38 80 01 3E */	li r4, 0x13e
/* 800CED9C  4B FF 31 D1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800CEDA0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800CEDA4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800CEDA8  7F E3 FB 78 */	mr r3, r31
/* 800CEDAC  4B FF FD 49 */	bl setSubjectMode__9daAlink_cFv
/* 800CEDB0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800CEDB4  B0 1F 2F E6 */	sth r0, 0x2fe6(r31)
/* 800CEDB8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800CEDBC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800CEDC0  41 82 00 1C */	beq lbl_800CEDDC
/* 800CEDC4  7F E3 FB 78 */	mr r3, r31
/* 800CEDC8  38 80 00 00 */	li r4, 0
/* 800CEDCC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800CEDD0  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800CEDD4  48 05 A9 05 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 800CEDD8  48 00 00 18 */	b lbl_800CEDF0
lbl_800CEDDC:
/* 800CEDDC  7F E3 FB 78 */	mr r3, r31
/* 800CEDE0  38 80 00 19 */	li r4, 0x19
/* 800CEDE4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800CEDE8  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800CEDEC  4B FD E1 F5 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_800CEDF0:
/* 800CEDF0  38 60 00 01 */	li r3, 1
/* 800CEDF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800CEDF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CEDFC  7C 08 03 A6 */	mtlr r0
/* 800CEE00  38 21 00 10 */	addi r1, r1, 0x10
/* 800CEE04  4E 80 00 20 */	blr 
