lbl_80A39008:
/* 80A39008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3900C  7C 08 02 A6 */	mflr r0
/* 80A39010  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A39014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A39018  7C 7F 1B 78 */	mr r31, r3
/* 80A3901C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A39020  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A39024  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80A39028  38 9F 09 78 */	addi r4, r31, 0x978
/* 80A3902C  4B 63 C0 D4 */	b GetRoomId__4dBgSFRC13cBgS_PolyInfo
/* 80A39030  98 7F 04 E2 */	stb r3, 0x4e2(r31)
/* 80A39034  98 7F 08 CA */	stb r3, 0x8ca(r31)
/* 80A39038  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3903C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A39040  7C 08 03 A6 */	mtlr r0
/* 80A39044  38 21 00 10 */	addi r1, r1, 0x10
/* 80A39048  4E 80 00 20 */	blr 
