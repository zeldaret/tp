lbl_80078BB0:
/* 80078BB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078BB4  7C 08 02 A6 */	mflr r0
/* 80078BB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078BBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078BC0  7C 7F 1B 78 */	mr r31, r3
/* 80078BC4  48 1E F4 B1 */	bl __ct__13cBgS_PolyInfoFv
/* 80078BC8  38 7F 00 10 */	addi r3, r31, 0x10
/* 80078BCC  48 1E EF 81 */	bl __ct__8cBgS_ChkFv
/* 80078BD0  38 7F 00 24 */	addi r3, r31, 0x24
/* 80078BD4  4B FF E8 C9 */	bl __ct__8dBgS_ChkFv
/* 80078BD8  3C 60 80 3B */	lis r3, __vt__14dBgS_SplGrpChk@ha /* 0x803ABA08@ha */
/* 80078BDC  38 63 BA 08 */	addi r3, r3, __vt__14dBgS_SplGrpChk@l /* 0x803ABA08@l */
/* 80078BE0  90 7F 00 0C */	stw r3, 0xc(r31)
/* 80078BE4  38 03 00 0C */	addi r0, r3, 0xc
/* 80078BE8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80078BEC  38 03 00 18 */	addi r0, r3, 0x18
/* 80078BF0  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80078BF4  38 03 00 24 */	addi r0, r3, 0x24
/* 80078BF8  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80078BFC  38 7F 00 24 */	addi r3, r31, 0x24
/* 80078C00  4B FF E9 61 */	bl GetPolyPassChkInfo__8dBgS_ChkFv
/* 80078C04  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80078C08  38 7F 00 24 */	addi r3, r31, 0x24
/* 80078C0C  4B FF E9 59 */	bl GetGrpPassChkInfo__8dBgS_ChkFv
/* 80078C10  90 7F 00 14 */	stw r3, 0x14(r31)
/* 80078C14  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 80078C18  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80078C1C  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80078C20  C0 22 8C E8 */	lfs f1, lit_319(r2)
/* 80078C24  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 80078C28  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 80078C2C  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 80078C30  C0 02 8C EC */	lfs f0, lit_320(r2)
/* 80078C34  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80078C38  D0 3F 00 4C */	stfs f1, 0x4c(r31)
/* 80078C3C  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 80078C40  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80078C44  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80078C48  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 80078C4C  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80078C50  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80078C54  80 1F 00 50 */	lwz r0, 0x50(r31)
/* 80078C58  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80078C5C  90 1F 00 50 */	stw r0, 0x50(r31)
/* 80078C60  7F E3 FB 78 */	mr r3, r31
/* 80078C64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078C6C  7C 08 03 A6 */	mtlr r0
/* 80078C70  38 21 00 10 */	addi r1, r1, 0x10
/* 80078C74  4E 80 00 20 */	blr 
