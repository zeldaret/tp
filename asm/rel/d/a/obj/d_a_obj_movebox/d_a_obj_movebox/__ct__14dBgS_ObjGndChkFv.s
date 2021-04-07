lbl_80480E88:
/* 80480E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80480E8C  7C 08 02 A6 */	mflr r0
/* 80480E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80480E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80480E98  7C 7F 1B 78 */	mr r31, r3
/* 80480E9C  4B BF 66 E1 */	bl __ct__11dBgS_GndChkFv
/* 80480EA0  3C 60 80 48 */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x804817F8@ha */
/* 80480EA4  38 63 17 F8 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x804817F8@l */
/* 80480EA8  90 7F 00 10 */	stw r3, 0x10(r31)
/* 80480EAC  38 03 00 0C */	addi r0, r3, 0xc
/* 80480EB0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80480EB4  38 03 00 18 */	addi r0, r3, 0x18
/* 80480EB8  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80480EBC  38 03 00 24 */	addi r0, r3, 0x24
/* 80480EC0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 80480EC4  38 7F 00 3C */	addi r3, r31, 0x3c
/* 80480EC8  4B BF 7F A1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80480ECC  7F E3 FB 78 */	mr r3, r31
/* 80480ED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80480ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80480ED8  7C 08 03 A6 */	mtlr r0
/* 80480EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80480EE0  4E 80 00 20 */	blr 
