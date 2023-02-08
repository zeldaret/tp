lbl_80104D7C:
/* 80104D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80104D80  7C 08 02 A6 */	mflr r0
/* 80104D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80104D88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80104D8C  7C 7F 1B 78 */	mr r31, r3
/* 80104D90  4B FF CD 19 */	bl getSwimMaxFallSpeed__9daAlink_cCFv
/* 80104D94  D0 3F 05 34 */	stfs f1, 0x534(r31)
/* 80104D98  7F E3 FB 78 */	mr r3, r31
/* 80104D9C  4B FF CC 7D */	bl getSwimFrontMaxSpeed__9daAlink_cCFv
/* 80104DA0  D0 3F 05 94 */	stfs f1, 0x594(r31)
/* 80104DA4  7F E3 FB 78 */	mr r3, r31
/* 80104DA8  48 00 3C 71 */	bl checkHookshotWait__9daAlink_cCFv
/* 80104DAC  2C 03 00 00 */	cmpwi r3, 0
/* 80104DB0  41 82 00 10 */	beq lbl_80104DC0
/* 80104DB4  7F E3 FB 78 */	mr r3, r31
/* 80104DB8  38 80 00 12 */	li r4, 0x12
/* 80104DBC  4B FA E4 95 */	bl setDoStatus__9daAlink_cFUc
lbl_80104DC0:
/* 80104DC0  7F E3 FB 78 */	mr r3, r31
/* 80104DC4  38 80 00 00 */	li r4, 0
/* 80104DC8  4B FA E9 6D */	bl setShapeAngleToAtnActor__9daAlink_cFi
/* 80104DCC  38 00 00 00 */	li r0, 0
/* 80104DD0  98 1F 20 68 */	stb r0, 0x2068(r31)
/* 80104DD4  7F E3 FB 78 */	mr r3, r31
/* 80104DD8  4B FF E2 81 */	bl checkSwimUpAction__9daAlink_cFv
/* 80104DDC  2C 03 00 00 */	cmpwi r3, 0
/* 80104DE0  41 82 00 0C */	beq lbl_80104DEC
/* 80104DE4  38 60 00 01 */	li r3, 1
/* 80104DE8  48 00 00 BC */	b lbl_80104EA4
lbl_80104DEC:
/* 80104DEC  7F E3 FB 78 */	mr r3, r31
/* 80104DF0  4B FB 4F 3D */	bl checkNextActionFromButton__9daAlink_cFv
/* 80104DF4  2C 03 00 00 */	cmpwi r3, 0
/* 80104DF8  41 82 00 0C */	beq lbl_80104E04
/* 80104DFC  38 60 00 01 */	li r3, 1
/* 80104E00  48 00 00 A4 */	b lbl_80104EA4
lbl_80104E04:
/* 80104E04  38 60 00 00 */	li r3, 0
/* 80104E08  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 80104E0C  28 00 01 8D */	cmplwi r0, 0x18d
/* 80104E10  41 82 00 10 */	beq lbl_80104E20
/* 80104E14  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80104E18  28 00 01 8C */	cmplwi r0, 0x18c
/* 80104E1C  40 82 00 08 */	bne lbl_80104E24
lbl_80104E20:
/* 80104E20  38 60 00 01 */	li r3, 1
lbl_80104E24:
/* 80104E24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80104E28  40 82 00 14 */	bne lbl_80104E3C
/* 80104E2C  7F E3 FB 78 */	mr r3, r31
/* 80104E30  38 80 00 00 */	li r4, 0
/* 80104E34  4B FF F4 C5 */	bl procSwimWaitInit__9daAlink_cFi
/* 80104E38  48 00 00 6C */	b lbl_80104EA4
lbl_80104E3C:
/* 80104E3C  7F E3 FB 78 */	mr r3, r31
/* 80104E40  48 00 47 89 */	bl checkNextActionHookshot__9daAlink_cFv
/* 80104E44  2C 03 00 00 */	cmpwi r3, 0
/* 80104E48  40 82 00 58 */	bne lbl_80104EA0
/* 80104E4C  7F E3 FB 78 */	mr r3, r31
/* 80104E50  48 00 3B C9 */	bl checkHookshotWait__9daAlink_cCFv
/* 80104E54  2C 03 00 00 */	cmpwi r3, 0
/* 80104E58  41 82 00 34 */	beq lbl_80104E8C
/* 80104E5C  7F E3 FB 78 */	mr r3, r31
/* 80104E60  4B FC 9A 41 */	bl setBodyAngleToCamera__9daAlink_cFv
/* 80104E64  2C 03 00 00 */	cmpwi r3, 0
/* 80104E68  41 82 00 0C */	beq lbl_80104E74
/* 80104E6C  7F E3 FB 78 */	mr r3, r31
/* 80104E70  48 00 3F 45 */	bl setHookshotSight__9daAlink_cFv
lbl_80104E74:
/* 80104E74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80104E78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80104E7C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80104E80  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 80104E84  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80104E88  48 00 00 18 */	b lbl_80104EA0
lbl_80104E8C:
/* 80104E8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80104E90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80104E94  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80104E98  64 00 00 04 */	oris r0, r0, 4
/* 80104E9C  90 03 5F 18 */	stw r0, 0x5f18(r3)
lbl_80104EA0:
/* 80104EA0  38 60 00 01 */	li r3, 1
lbl_80104EA4:
/* 80104EA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80104EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80104EAC  7C 08 03 A6 */	mtlr r0
/* 80104EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80104EB4  4E 80 00 20 */	blr 
