lbl_80BE4138:
/* 80BE4138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE413C  7C 08 02 A6 */	mflr r0
/* 80BE4140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE4144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE4148  7C 7F 1B 78 */	mr r31, r3
/* 80BE414C  48 00 05 B5 */	bl checkHang__14daObjFallObj_cFv
/* 80BE4150  7C 64 1B 78 */	mr r4, r3
/* 80BE4154  88 1F 05 F0 */	lbz r0, 0x5f0(r31)
/* 80BE4158  2C 00 00 03 */	cmpwi r0, 3
/* 80BE415C  41 82 00 54 */	beq lbl_80BE41B0
/* 80BE4160  40 80 00 1C */	bge lbl_80BE417C
/* 80BE4164  2C 00 00 01 */	cmpwi r0, 1
/* 80BE4168  41 82 00 30 */	beq lbl_80BE4198
/* 80BE416C  40 80 00 38 */	bge lbl_80BE41A4
/* 80BE4170  2C 00 00 00 */	cmpwi r0, 0
/* 80BE4174  40 80 00 18 */	bge lbl_80BE418C
/* 80BE4178  48 00 00 58 */	b lbl_80BE41D0
lbl_80BE417C:
/* 80BE417C  2C 00 00 05 */	cmpwi r0, 5
/* 80BE4180  41 82 00 48 */	beq lbl_80BE41C8
/* 80BE4184  40 80 00 4C */	bge lbl_80BE41D0
/* 80BE4188  48 00 00 34 */	b lbl_80BE41BC
lbl_80BE418C:
/* 80BE418C  7F E3 FB 78 */	mr r3, r31
/* 80BE4190  48 00 00 99 */	bl action_wait__14daObjFallObj_cFb
/* 80BE4194  48 00 00 3C */	b lbl_80BE41D0
lbl_80BE4198:
/* 80BE4198  7F E3 FB 78 */	mr r3, r31
/* 80BE419C  48 00 02 49 */	bl action_countdown__14daObjFallObj_cFv
/* 80BE41A0  48 00 00 30 */	b lbl_80BE41D0
lbl_80BE41A4:
/* 80BE41A4  7F E3 FB 78 */	mr r3, r31
/* 80BE41A8  48 00 04 4D */	bl action_fall__14daObjFallObj_cFv
/* 80BE41AC  48 00 00 24 */	b lbl_80BE41D0
lbl_80BE41B0:
/* 80BE41B0  7F E3 FB 78 */	mr r3, r31
/* 80BE41B4  48 00 01 0D */	bl action_fallStart__14daObjFallObj_cFv
/* 80BE41B8  48 00 00 18 */	b lbl_80BE41D0
lbl_80BE41BC:
/* 80BE41BC  7F E3 FB 78 */	mr r3, r31
/* 80BE41C0  48 00 04 AD */	bl action_end__14daObjFallObj_cFv
/* 80BE41C4  48 00 00 0C */	b lbl_80BE41D0
lbl_80BE41C8:
/* 80BE41C8  7F E3 FB 78 */	mr r3, r31
/* 80BE41CC  48 00 04 A5 */	bl action_follow_fall__14daObjFallObj_cFv
lbl_80BE41D0:
/* 80BE41D0  88 1F 05 F1 */	lbz r0, 0x5f1(r31)
/* 80BE41D4  28 00 00 00 */	cmplwi r0, 0
/* 80BE41D8  41 82 00 2C */	beq lbl_80BE4204
/* 80BE41DC  88 1F 05 E4 */	lbz r0, 0x5e4(r31)
/* 80BE41E0  28 00 00 00 */	cmplwi r0, 0
/* 80BE41E4  40 82 00 20 */	bne lbl_80BE4204
/* 80BE41E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE41EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE41F0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BE41F4  38 80 00 1F */	li r4, 0x1f
/* 80BE41F8  4B 48 BB 9D */	bl StopQuake__12dVibration_cFi
/* 80BE41FC  38 00 00 00 */	li r0, 0
/* 80BE4200  98 1F 05 F1 */	stb r0, 0x5f1(r31)
lbl_80BE4204:
/* 80BE4204  88 1F 05 E4 */	lbz r0, 0x5e4(r31)
/* 80BE4208  98 1F 05 E5 */	stb r0, 0x5e5(r31)
/* 80BE420C  38 00 00 00 */	li r0, 0
/* 80BE4210  98 1F 05 E4 */	stb r0, 0x5e4(r31)
/* 80BE4214  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE4218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE421C  7C 08 03 A6 */	mtlr r0
/* 80BE4220  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE4224  4E 80 00 20 */	blr 
