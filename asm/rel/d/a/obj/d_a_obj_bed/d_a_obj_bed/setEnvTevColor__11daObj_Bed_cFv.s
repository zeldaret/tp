lbl_80BADF34:
/* 80BADF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BADF38  7C 08 02 A6 */	mflr r0
/* 80BADF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BADF40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BADF44  93 C1 00 08 */	stw r30, 8(r1)
/* 80BADF48  7C 7E 1B 78 */	mr r30, r3
/* 80BADF4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BADF50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BADF54  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80BADF58  7F E3 FB 78 */	mr r3, r31
/* 80BADF5C  38 9E 07 A4 */	addi r4, r30, 0x7a4
/* 80BADF60  4B 4C 6C 89 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80BADF64  98 7E 04 8D */	stb r3, 0x48d(r30)
/* 80BADF68  7F E3 FB 78 */	mr r3, r31
/* 80BADF6C  38 9E 07 A4 */	addi r4, r30, 0x7a4
/* 80BADF70  4B 4C 71 91 */	bl GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80BADF74  98 7E 04 8C */	stb r3, 0x48c(r30)
/* 80BADF78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BADF7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BADF80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BADF84  7C 08 03 A6 */	mtlr r0
/* 80BADF88  38 21 00 10 */	addi r1, r1, 0x10
/* 80BADF8C  4E 80 00 20 */	blr 
