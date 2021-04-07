lbl_8021F7B0:
/* 8021F7B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021F7B4  7C 08 02 A6 */	mflr r0
/* 8021F7B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8021F7BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8021F7C0  48 14 2A 1D */	bl _savegpr_29
/* 8021F7C4  7C 7F 1B 78 */	mr r31, r3
/* 8021F7C8  38 00 00 00 */	li r0, 0
/* 8021F7CC  90 03 01 24 */	stw r0, 0x124(r3)
/* 8021F7D0  80 03 01 28 */	lwz r0, 0x128(r3)
/* 8021F7D4  90 03 01 2C */	stw r0, 0x12c(r3)
/* 8021F7D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021F7DC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021F7E0  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 8021F7E4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8021F7E8  54 00 01 8C */	rlwinm r0, r0, 0, 6, 6
/* 8021F7EC  90 1F 01 28 */	stw r0, 0x128(r31)
/* 8021F7F0  88 04 5E B8 */	lbz r0, 0x5eb8(r4)
/* 8021F7F4  28 00 00 00 */	cmplwi r0, 0
/* 8021F7F8  41 82 00 14 */	beq lbl_8021F80C
/* 8021F7FC  80 64 5D BC */	lwz r3, 0x5dbc(r4)
/* 8021F800  48 01 79 E5 */	bl isPlaceMessage__12dMsgObject_cFv
/* 8021F804  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021F808  41 82 00 14 */	beq lbl_8021F81C
lbl_8021F80C:
/* 8021F80C  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021F810  60 00 40 00 */	ori r0, r0, 0x4000
/* 8021F814  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021F818  48 00 00 C4 */	b lbl_8021F8DC
lbl_8021F81C:
/* 8021F81C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021F820  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021F824  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8021F828  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8021F82C  41 82 00 20 */	beq lbl_8021F84C
/* 8021F830  88 03 5E 1D */	lbz r0, 0x5e1d(r3)
/* 8021F834  28 00 00 12 */	cmplwi r0, 0x12
/* 8021F838  40 82 00 14 */	bne lbl_8021F84C
/* 8021F83C  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021F840  64 00 00 20 */	oris r0, r0, 0x20
/* 8021F844  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021F848  48 00 00 94 */	b lbl_8021F8DC
lbl_8021F84C:
/* 8021F84C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021F850  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021F854  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8021F858  28 00 00 00 */	cmplwi r0, 0
/* 8021F85C  41 82 00 80 */	beq lbl_8021F8DC
/* 8021F860  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021F864  60 00 00 40 */	ori r0, r0, 0x40
/* 8021F868  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021F86C  80 0D 88 B8 */	lwz r0, m_mode__7dDemo_c(r13)
/* 8021F870  2C 00 00 01 */	cmpwi r0, 1
/* 8021F874  41 82 00 68 */	beq lbl_8021F8DC
/* 8021F878  88 03 5E 8F */	lbz r0, 0x5e8f(r3)
/* 8021F87C  28 00 00 06 */	cmplwi r0, 6
/* 8021F880  41 82 00 5C */	beq lbl_8021F8DC
/* 8021F884  48 01 89 A9 */	bl getStatus__12dMsgObject_cFv
/* 8021F888  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8021F88C  20 60 00 01 */	subfic r3, r0, 1
/* 8021F890  30 03 FF FF */	addic r0, r3, -1
/* 8021F894  7C 00 19 10 */	subfe r0, r0, r3
/* 8021F898  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8021F89C  41 82 00 40 */	beq lbl_8021F8DC
/* 8021F8A0  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8021F8A4  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8021F8A8  4B FF C9 35 */	bl isFloatingMessageVisible__13dMeter2Info_cFv
/* 8021F8AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021F8B0  40 82 00 2C */	bne lbl_8021F8DC
/* 8021F8B4  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021F8B8  60 00 01 00 */	ori r0, r0, 0x100
/* 8021F8BC  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021F8C0  38 00 00 00 */	li r0, 0
/* 8021F8C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021F8C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021F8CC  98 03 5E 1D */	stb r0, 0x5e1d(r3)
/* 8021F8D0  98 03 5E 43 */	stb r0, 0x5e43(r3)
/* 8021F8D4  98 03 5E 1C */	stb r0, 0x5e1c(r3)
/* 8021F8D8  98 03 5E 42 */	stb r0, 0x5e42(r3)
lbl_8021F8DC:
/* 8021F8DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021F8E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021F8E4  88 03 5E 8F */	lbz r0, 0x5e8f(r3)
/* 8021F8E8  28 00 00 06 */	cmplwi r0, 6
/* 8021F8EC  41 82 00 68 */	beq lbl_8021F954
/* 8021F8F0  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021F8F4  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8021F8F8  40 82 00 5C */	bne lbl_8021F954
/* 8021F8FC  48 01 89 31 */	bl getStatus__12dMsgObject_cFv
/* 8021F900  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8021F904  20 60 00 01 */	subfic r3, r0, 1
/* 8021F908  30 03 FF FF */	addic r0, r3, -1
/* 8021F90C  7C 00 19 10 */	subfe r0, r0, r3
/* 8021F910  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8021F914  41 82 00 40 */	beq lbl_8021F954
/* 8021F918  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8021F91C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8021F920  4B FF C8 BD */	bl isFloatingMessageVisible__13dMeter2Info_cFv
/* 8021F924  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021F928  40 82 00 2C */	bne lbl_8021F954
/* 8021F92C  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021F930  60 00 01 00 */	ori r0, r0, 0x100
/* 8021F934  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021F938  38 00 00 00 */	li r0, 0
/* 8021F93C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021F940  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021F944  98 03 5E 1D */	stb r0, 0x5e1d(r3)
/* 8021F948  98 03 5E 43 */	stb r0, 0x5e43(r3)
/* 8021F94C  98 03 5E 1C */	stb r0, 0x5e1c(r3)
/* 8021F950  98 03 5E 42 */	stb r0, 0x5e42(r3)
lbl_8021F954:
/* 8021F954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021F958  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021F95C  88 03 5E B5 */	lbz r0, 0x5eb5(r3)
/* 8021F960  28 00 00 00 */	cmplwi r0, 0
/* 8021F964  40 82 02 1C */	bne lbl_8021FB80
/* 8021F968  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 8021F96C  4B FF C2 B9 */	bl getCameraSubject__13dMeter2Draw_cFv
/* 8021F970  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021F974  41 82 00 14 */	beq lbl_8021F988
/* 8021F978  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021F97C  64 00 40 00 */	oris r0, r0, 0x4000
/* 8021F980  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021F984  48 00 00 20 */	b lbl_8021F9A4
lbl_8021F988:
/* 8021F988  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 8021F98C  4B FF C2 C9 */	bl getItemSubject__13dMeter2Draw_cFv
/* 8021F990  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021F994  41 82 00 10 */	beq lbl_8021F9A4
/* 8021F998  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021F99C  60 00 10 00 */	ori r0, r0, 0x1000
/* 8021F9A0  90 1F 01 24 */	stw r0, 0x124(r31)
lbl_8021F9A4:
/* 8021F9A4  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 8021F9A8  4B FF C3 05 */	bl getPlayerSubject__13dMeter2Draw_cFv
/* 8021F9AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021F9B0  41 82 00 10 */	beq lbl_8021F9C0
/* 8021F9B4  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021F9B8  64 00 00 10 */	oris r0, r0, 0x10
/* 8021F9BC  90 1F 01 24 */	stw r0, 0x124(r31)
lbl_8021F9C0:
/* 8021F9C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021F9C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021F9C8  38 83 5D 7C */	addi r4, r3, 0x5d7c
/* 8021F9CC  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 8021F9D0  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 8021F9D4  41 82 00 20 */	beq lbl_8021F9F4
/* 8021F9D8  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021F9DC  64 00 80 00 */	oris r0, r0, 0x8000
/* 8021F9E0  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021F9E4  38 00 00 12 */	li r0, 0x12
/* 8021F9E8  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 8021F9EC  38 00 00 02 */	li r0, 2
/* 8021F9F0  98 03 5E 57 */	stb r0, 0x5e57(r3)
lbl_8021F9F4:
/* 8021F9F4  80 04 00 00 */	lwz r0, 0(r4)
/* 8021F9F8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8021F9FC  41 82 00 14 */	beq lbl_8021FA10
/* 8021FA00  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FA04  60 00 00 80 */	ori r0, r0, 0x80
/* 8021FA08  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FA0C  48 00 01 74 */	b lbl_8021FB80
lbl_8021FA10:
/* 8021FA10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FA14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FA18  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8021FA1C  7C 00 07 74 */	extsb r0, r0
/* 8021FA20  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8021FA24  7C 04 00 2E */	lwzx r0, r4, r0
/* 8021FA28  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8021FA2C  41 82 00 2C */	beq lbl_8021FA58
/* 8021FA30  4B F6 1C 11 */	bl dCam_getBody__Fv
/* 8021FA34  38 81 00 0A */	addi r4, r1, 0xa
/* 8021FA38  38 A1 00 08 */	addi r5, r1, 8
/* 8021FA3C  4B F5 54 69 */	bl CalcSubjectAngle__9dCamera_cFPsPs
/* 8021FA40  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8021FA44  41 82 00 14 */	beq lbl_8021FA58
/* 8021FA48  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FA4C  64 00 20 00 */	oris r0, r0, 0x2000
/* 8021FA50  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FA54  48 00 01 2C */	b lbl_8021FB80
lbl_8021FA58:
/* 8021FA58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FA5C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FA60  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 8021FA64  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8021FA68  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 8021FA6C  7D 89 03 A6 */	mtctr r12
/* 8021FA70  4E 80 04 21 */	bctrl 
/* 8021FA74  28 03 00 00 */	cmplwi r3, 0
/* 8021FA78  41 82 00 14 */	beq lbl_8021FA8C
/* 8021FA7C  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FA80  60 00 04 00 */	ori r0, r0, 0x400
/* 8021FA84  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FA88  48 00 00 F8 */	b lbl_8021FB80
lbl_8021FA8C:
/* 8021FA8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FA90  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FA94  80 1E 5F 18 */	lwz r0, 0x5f18(r30)
/* 8021FA98  54 00 01 09 */	rlwinm. r0, r0, 0, 4, 4
/* 8021FA9C  40 82 00 20 */	bne lbl_8021FABC
/* 8021FAA0  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 8021FAA4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8021FAA8  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 8021FAAC  7D 89 03 A6 */	mtctr r12
/* 8021FAB0  4E 80 04 21 */	bctrl 
/* 8021FAB4  28 03 00 00 */	cmplwi r3, 0
/* 8021FAB8  41 82 00 14 */	beq lbl_8021FACC
lbl_8021FABC:
/* 8021FABC  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FAC0  60 00 02 00 */	ori r0, r0, 0x200
/* 8021FAC4  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FAC8  48 00 00 B8 */	b lbl_8021FB80
lbl_8021FACC:
/* 8021FACC  80 9E 5F 18 */	lwz r4, 0x5f18(r30)
/* 8021FAD0  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 8021FAD4  41 82 00 14 */	beq lbl_8021FAE8
/* 8021FAD8  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FADC  60 00 08 00 */	ori r0, r0, 0x800
/* 8021FAE0  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FAE4  48 00 00 9C */	b lbl_8021FB80
lbl_8021FAE8:
/* 8021FAE8  54 80 02 D7 */	rlwinm. r0, r4, 0, 0xb, 0xb
/* 8021FAEC  41 82 00 14 */	beq lbl_8021FB00
/* 8021FAF0  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FAF4  60 00 20 00 */	ori r0, r0, 0x2000
/* 8021FAF8  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FAFC  48 00 00 84 */	b lbl_8021FB80
lbl_8021FB00:
/* 8021FB00  3C 60 02 00 */	lis r3, 0x0200 /* 0x02000108@ha */
/* 8021FB04  38 03 01 08 */	addi r0, r3, 0x0108 /* 0x02000108@l */
/* 8021FB08  7C 80 00 39 */	and. r0, r4, r0
/* 8021FB0C  41 82 00 14 */	beq lbl_8021FB20
/* 8021FB10  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FB14  60 00 80 00 */	ori r0, r0, 0x8000
/* 8021FB18  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FB1C  48 00 00 64 */	b lbl_8021FB80
lbl_8021FB20:
/* 8021FB20  54 80 01 4B */	rlwinm. r0, r4, 0, 5, 5
/* 8021FB24  41 82 00 14 */	beq lbl_8021FB38
/* 8021FB28  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FB2C  64 00 00 01 */	oris r0, r0, 1
/* 8021FB30  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FB34  48 00 00 4C */	b lbl_8021FB80
lbl_8021FB38:
/* 8021FB38  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 8021FB3C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8021FB40  81 8C 01 A0 */	lwz r12, 0x1a0(r12)
/* 8021FB44  7D 89 03 A6 */	mtctr r12
/* 8021FB48  4E 80 04 21 */	bctrl 
/* 8021FB4C  2C 03 00 00 */	cmpwi r3, 0
/* 8021FB50  41 82 00 30 */	beq lbl_8021FB80
/* 8021FB54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FB58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FB5C  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 8021FB60  28 03 00 00 */	cmplwi r3, 0
/* 8021FB64  41 82 00 1C */	beq lbl_8021FB80
/* 8021FB68  80 03 17 44 */	lwz r0, 0x1744(r3)
/* 8021FB6C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 8021FB70  40 82 00 10 */	bne lbl_8021FB80
/* 8021FB74  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FB78  64 00 02 00 */	oris r0, r0, 0x200
/* 8021FB7C  90 1F 01 24 */	stw r0, 0x124(r31)
lbl_8021FB80:
/* 8021FB80  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8021FB84  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8021FB88  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 8021FB8C  28 00 00 0A */	cmplwi r0, 0xa
/* 8021FB90  41 81 01 50 */	bgt lbl_8021FCE0
/* 8021FB94  3C 60 80 3C */	lis r3, lit_5038@ha /* 0x803BFA28@ha */
/* 8021FB98  38 63 FA 28 */	addi r3, r3, lit_5038@l /* 0x803BFA28@l */
/* 8021FB9C  54 00 10 3A */	slwi r0, r0, 2
/* 8021FBA0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8021FBA4  7C 09 03 A6 */	mtctr r0
/* 8021FBA8  4E 80 04 20 */	bctr 
/* 8021FBAC  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FBB0  60 00 00 08 */	ori r0, r0, 8
/* 8021FBB4  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FBB8  48 00 01 28 */	b lbl_8021FCE0
/* 8021FBBC  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FBC0  60 00 00 10 */	ori r0, r0, 0x10
/* 8021FBC4  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FBC8  48 00 01 18 */	b lbl_8021FCE0
/* 8021FBCC  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FBD0  64 00 01 00 */	oris r0, r0, 0x100
/* 8021FBD4  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FBD8  38 00 00 12 */	li r0, 0x12
/* 8021FBDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FBE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FBE4  98 03 5E 1D */	stb r0, 0x5e1d(r3)
/* 8021FBE8  38 00 00 00 */	li r0, 0
/* 8021FBEC  98 03 5E 43 */	stb r0, 0x5e43(r3)
/* 8021FBF0  98 03 5E 24 */	stb r0, 0x5e24(r3)
/* 8021FBF4  98 03 5E 4A */	stb r0, 0x5e4a(r3)
/* 8021FBF8  98 03 5E 1C */	stb r0, 0x5e1c(r3)
/* 8021FBFC  98 03 5E 42 */	stb r0, 0x5e42(r3)
/* 8021FC00  48 00 00 E0 */	b lbl_8021FCE0
/* 8021FC04  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FC08  60 00 00 20 */	ori r0, r0, 0x20
/* 8021FC0C  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FC10  38 00 00 12 */	li r0, 0x12
/* 8021FC14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FC18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FC1C  98 03 5E 1D */	stb r0, 0x5e1d(r3)
/* 8021FC20  38 00 00 00 */	li r0, 0
/* 8021FC24  98 03 5E 43 */	stb r0, 0x5e43(r3)
/* 8021FC28  98 03 5E 24 */	stb r0, 0x5e24(r3)
/* 8021FC2C  98 03 5E 4A */	stb r0, 0x5e4a(r3)
/* 8021FC30  98 03 5E 1C */	stb r0, 0x5e1c(r3)
/* 8021FC34  98 03 5E 42 */	stb r0, 0x5e42(r3)
/* 8021FC38  48 00 00 A8 */	b lbl_8021FCE0
/* 8021FC3C  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FC40  64 00 04 00 */	oris r0, r0, 0x400
/* 8021FC44  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FC48  38 00 00 12 */	li r0, 0x12
/* 8021FC4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FC50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FC54  98 03 5E 1D */	stb r0, 0x5e1d(r3)
/* 8021FC58  38 00 00 00 */	li r0, 0
/* 8021FC5C  98 03 5E 43 */	stb r0, 0x5e43(r3)
/* 8021FC60  98 03 5E 24 */	stb r0, 0x5e24(r3)
/* 8021FC64  98 03 5E 4A */	stb r0, 0x5e4a(r3)
/* 8021FC68  98 03 5E 1C */	stb r0, 0x5e1c(r3)
/* 8021FC6C  98 03 5E 42 */	stb r0, 0x5e42(r3)
/* 8021FC70  48 00 00 70 */	b lbl_8021FCE0
/* 8021FC74  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FC78  64 00 08 00 */	oris r0, r0, 0x800
/* 8021FC7C  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FC80  38 00 00 12 */	li r0, 0x12
/* 8021FC84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FC88  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FC8C  98 04 5E 1D */	stb r0, 0x5e1d(r4)
/* 8021FC90  38 60 00 00 */	li r3, 0
/* 8021FC94  98 64 5E 43 */	stb r3, 0x5e43(r4)
/* 8021FC98  38 00 00 22 */	li r0, 0x22
/* 8021FC9C  98 04 5E 24 */	stb r0, 0x5e24(r4)
/* 8021FCA0  98 64 5E 4A */	stb r3, 0x5e4a(r4)
/* 8021FCA4  98 64 5E 1C */	stb r3, 0x5e1c(r4)
/* 8021FCA8  98 64 5E 42 */	stb r3, 0x5e42(r4)
/* 8021FCAC  48 00 00 34 */	b lbl_8021FCE0
/* 8021FCB0  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FCB4  64 00 10 00 */	oris r0, r0, 0x1000
/* 8021FCB8  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FCBC  38 00 00 00 */	li r0, 0
/* 8021FCC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FCC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FCC8  98 03 5E 1D */	stb r0, 0x5e1d(r3)
/* 8021FCCC  98 03 5E 43 */	stb r0, 0x5e43(r3)
/* 8021FCD0  98 03 5E 24 */	stb r0, 0x5e24(r3)
/* 8021FCD4  98 03 5E 4A */	stb r0, 0x5e4a(r3)
/* 8021FCD8  98 03 5E 1C */	stb r0, 0x5e1c(r3)
/* 8021FCDC  98 03 5E 42 */	stb r0, 0x5e42(r3)
lbl_8021FCE0:
/* 8021FCE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021FCE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8021FCE8  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8021FCEC  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8021FCF0  7D 89 03 A6 */	mtctr r12
/* 8021FCF4  4E 80 04 21 */	bctrl 
/* 8021FCF8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8021FCFC  54 00 87 7E */	rlwinm r0, r0, 0x10, 0x1d, 0x1f
/* 8021FD00  2C 00 00 01 */	cmpwi r0, 1
/* 8021FD04  41 82 00 18 */	beq lbl_8021FD1C
/* 8021FD08  40 80 00 08 */	bge lbl_8021FD10
/* 8021FD0C  48 00 00 30 */	b lbl_8021FD3C
lbl_8021FD10:
/* 8021FD10  2C 00 00 03 */	cmpwi r0, 3
/* 8021FD14  40 80 00 28 */	bge lbl_8021FD3C
/* 8021FD18  48 00 00 14 */	b lbl_8021FD2C
lbl_8021FD1C:
/* 8021FD1C  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FD20  60 00 00 04 */	ori r0, r0, 4
/* 8021FD24  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FD28  48 00 00 20 */	b lbl_8021FD48
lbl_8021FD2C:
/* 8021FD2C  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FD30  60 00 00 02 */	ori r0, r0, 2
/* 8021FD34  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8021FD38  48 00 00 10 */	b lbl_8021FD48
lbl_8021FD3C:
/* 8021FD3C  80 1F 01 24 */	lwz r0, 0x124(r31)
/* 8021FD40  60 00 00 01 */	ori r0, r0, 1
/* 8021FD44  90 1F 01 24 */	stw r0, 0x124(r31)
lbl_8021FD48:
/* 8021FD48  39 61 00 20 */	addi r11, r1, 0x20
/* 8021FD4C  48 14 24 DD */	bl _restgpr_29
/* 8021FD50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021FD54  7C 08 03 A6 */	mtlr r0
/* 8021FD58  38 21 00 20 */	addi r1, r1, 0x20
/* 8021FD5C  4E 80 00 20 */	blr 
