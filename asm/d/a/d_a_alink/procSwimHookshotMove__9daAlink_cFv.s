lbl_80104FC4:
/* 80104FC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80104FC8  7C 08 02 A6 */	mflr r0
/* 80104FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80104FD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80104FD4  7C 7F 1B 78 */	mr r31, r3
/* 80104FD8  48 00 3F 8D */	bl cancelHookshotMove__9daAlink_cFv
/* 80104FDC  7F E3 FB 78 */	mr r3, r31
/* 80104FE0  48 00 3A 39 */	bl checkHookshotWait__9daAlink_cCFv
/* 80104FE4  2C 03 00 00 */	cmpwi r3, 0
/* 80104FE8  41 82 00 20 */	beq lbl_80105008
/* 80104FEC  7F E3 FB 78 */	mr r3, r31
/* 80104FF0  4B FB AD C1 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80104FF4  2C 03 00 00 */	cmpwi r3, 0
/* 80104FF8  40 82 00 10 */	bne lbl_80105008
/* 80104FFC  7F E3 FB 78 */	mr r3, r31
/* 80105000  38 80 00 12 */	li r4, 0x12
/* 80105004  4B FA E2 4D */	bl setDoStatus__9daAlink_cFUc
lbl_80105008:
/* 80105008  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 8010500C  2C 00 00 00 */	cmpwi r0, 0
/* 80105010  40 82 00 14 */	bne lbl_80105024
/* 80105014  7F E3 FB 78 */	mr r3, r31
/* 80105018  4B FF D3 CD */	bl setSpeedAndAngleSwim__9daAlink_cFv
/* 8010501C  7F E3 FB 78 */	mr r3, r31
/* 80105020  4B FF E6 79 */	bl setSwimMoveAnime__9daAlink_cFv
lbl_80105024:
/* 80105024  7F E3 FB 78 */	mr r3, r31
/* 80105028  4B FF E0 31 */	bl checkSwimUpAction__9daAlink_cFv
/* 8010502C  2C 03 00 00 */	cmpwi r3, 0
/* 80105030  41 82 00 0C */	beq lbl_8010503C
/* 80105034  38 60 00 01 */	li r3, 1
/* 80105038  48 00 01 50 */	b lbl_80105188
lbl_8010503C:
/* 8010503C  7F E3 FB 78 */	mr r3, r31
/* 80105040  4B FF EE A1 */	bl checkSwimButtonAccept__9daAlink_cFv
/* 80105044  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80105048  41 82 00 1C */	beq lbl_80105064
/* 8010504C  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 80105050  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80105054  41 82 00 10 */	beq lbl_80105064
/* 80105058  7F E3 FB 78 */	mr r3, r31
/* 8010505C  4B FF F8 FD */	bl procSwimDiveInit__9daAlink_cFv
/* 80105060  48 00 01 28 */	b lbl_80105188
lbl_80105064:
/* 80105064  7F E3 FB 78 */	mr r3, r31
/* 80105068  4B FF EE A1 */	bl checkUpSwimButtonAccept__9daAlink_cFv
/* 8010506C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80105070  41 82 00 24 */	beq lbl_80105094
/* 80105074  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 80105078  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8010507C  41 82 00 18 */	beq lbl_80105094
/* 80105080  38 00 00 1E */	li r0, 0x1e
/* 80105084  B0 1F 30 00 */	sth r0, 0x3000(r31)
/* 80105088  7F E3 FB 78 */	mr r3, r31
/* 8010508C  4B FF F5 E5 */	bl procSwimMoveInit__9daAlink_cFv
/* 80105090  48 00 00 F8 */	b lbl_80105188
lbl_80105094:
/* 80105094  7F E3 FB 78 */	mr r3, r31
/* 80105098  48 00 39 81 */	bl checkHookshotWait__9daAlink_cCFv
/* 8010509C  2C 03 00 00 */	cmpwi r3, 0
/* 801050A0  40 82 00 14 */	bne lbl_801050B4
/* 801050A4  7F E3 FB 78 */	mr r3, r31
/* 801050A8  48 00 39 41 */	bl checkBossOctaIealRoom__9daAlink_cFv
/* 801050AC  2C 03 00 00 */	cmpwi r3, 0
/* 801050B0  41 82 00 10 */	beq lbl_801050C0
lbl_801050B4:
/* 801050B4  7F E3 FB 78 */	mr r3, r31
/* 801050B8  38 80 00 00 */	li r4, 0
/* 801050BC  4B FA E6 79 */	bl setShapeAngleToAtnActor__9daAlink_cFi
lbl_801050C0:
/* 801050C0  7F E3 FB 78 */	mr r3, r31
/* 801050C4  4B FB 4C 69 */	bl checkNextActionFromButton__9daAlink_cFv
/* 801050C8  2C 03 00 00 */	cmpwi r3, 0
/* 801050CC  41 82 00 0C */	beq lbl_801050D8
/* 801050D0  38 60 00 01 */	li r3, 1
/* 801050D4  48 00 00 B4 */	b lbl_80105188
lbl_801050D8:
/* 801050D8  38 60 00 00 */	li r3, 0
/* 801050DC  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 801050E0  28 00 01 8D */	cmplwi r0, 0x18d
/* 801050E4  41 82 00 10 */	beq lbl_801050F4
/* 801050E8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 801050EC  28 00 01 8C */	cmplwi r0, 0x18c
/* 801050F0  40 82 00 08 */	bne lbl_801050F8
lbl_801050F4:
/* 801050F4  38 60 00 01 */	li r3, 1
lbl_801050F8:
/* 801050F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801050FC  40 82 00 14 */	bne lbl_80105110
/* 80105100  7F E3 FB 78 */	mr r3, r31
/* 80105104  38 80 00 00 */	li r4, 0
/* 80105108  4B FF F1 F1 */	bl procSwimWaitInit__9daAlink_cFi
/* 8010510C  48 00 00 7C */	b lbl_80105188
lbl_80105110:
/* 80105110  7F E3 FB 78 */	mr r3, r31
/* 80105114  48 00 44 B5 */	bl checkNextActionHookshot__9daAlink_cFv
/* 80105118  2C 03 00 00 */	cmpwi r3, 0
/* 8010511C  40 82 00 68 */	bne lbl_80105184
/* 80105120  7F E3 FB 78 */	mr r3, r31
/* 80105124  4B FA E7 E1 */	bl checkZeroSpeedF__9daAlink_cCFv
/* 80105128  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010512C  41 82 00 14 */	beq lbl_80105140
/* 80105130  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 80105134  60 00 00 01 */	ori r0, r0, 1
/* 80105138  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 8010513C  48 00 00 10 */	b lbl_8010514C
lbl_80105140:
/* 80105140  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 80105144  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80105148  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_8010514C:
/* 8010514C  7F E3 FB 78 */	mr r3, r31
/* 80105150  48 00 38 C9 */	bl checkHookshotWait__9daAlink_cCFv
/* 80105154  2C 03 00 00 */	cmpwi r3, 0
/* 80105158  40 82 00 20 */	bne lbl_80105178
/* 8010515C  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 80105160  28 00 00 00 */	cmplwi r0, 0
/* 80105164  41 82 00 20 */	beq lbl_80105184
/* 80105168  7F E3 FB 78 */	mr r3, r31
/* 8010516C  48 00 38 7D */	bl checkBossOctaIealRoom__9daAlink_cFv
/* 80105170  2C 03 00 00 */	cmpwi r3, 0
/* 80105174  41 82 00 10 */	beq lbl_80105184
lbl_80105178:
/* 80105178  7F E3 FB 78 */	mr r3, r31
/* 8010517C  38 80 00 00 */	li r4, 0
/* 80105180  4B FB 61 31 */	bl setBodyAngleXReadyAnime__9daAlink_cFi
lbl_80105184:
/* 80105184  38 60 00 01 */	li r3, 1
lbl_80105188:
/* 80105188  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010518C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80105190  7C 08 03 A6 */	mtlr r0
/* 80105194  38 21 00 10 */	addi r1, r1, 0x10
/* 80105198  4E 80 00 20 */	blr 
