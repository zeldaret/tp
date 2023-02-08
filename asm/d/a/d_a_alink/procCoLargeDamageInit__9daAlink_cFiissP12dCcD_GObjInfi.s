lbl_800D96DC:
/* 800D96DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800D96E0  7C 08 02 A6 */	mflr r0
/* 800D96E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 800D96E8  39 61 00 50 */	addi r11, r1, 0x50
/* 800D96EC  48 28 8A D1 */	bl _savegpr_21
/* 800D96F0  7C 75 1B 78 */	mr r21, r3
/* 800D96F4  7C 96 23 78 */	mr r22, r4
/* 800D96F8  7C B7 2B 78 */	mr r23, r5
/* 800D96FC  7C D8 33 78 */	mr r24, r6
/* 800D9700  7C F9 3B 78 */	mr r25, r7
/* 800D9704  7D 1D 43 78 */	mr r29, r8
/* 800D9708  7D 3A 4B 78 */	mr r26, r9
/* 800D970C  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 800D9710  3B E3 D6 58 */	addi r31, r3, lit_3757@l /* 0x8038D658@l */
/* 800D9714  38 00 00 00 */	li r0, 0
/* 800D9718  88 75 2F AA */	lbz r3, 0x2faa(r21)
/* 800D971C  28 03 00 01 */	cmplwi r3, 1
/* 800D9720  41 82 00 0C */	beq lbl_800D972C
/* 800D9724  28 03 00 02 */	cmplwi r3, 2
/* 800D9728  40 82 00 08 */	bne lbl_800D9730
lbl_800D972C:
/* 800D972C  38 00 00 01 */	li r0, 1
lbl_800D9730:
/* 800D9730  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 800D9734  7E A3 AB 78 */	mr r3, r21
/* 800D9738  38 80 01 59 */	li r4, 0x159
/* 800D973C  4B FE 96 69 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D9740  2C 03 00 00 */	cmpwi r3, 0
/* 800D9744  40 82 00 0C */	bne lbl_800D9750
/* 800D9748  38 60 00 00 */	li r3, 0
/* 800D974C  48 00 07 24 */	b lbl_800D9E70
lbl_800D9750:
/* 800D9750  80 75 28 40 */	lwz r3, 0x2840(r21)
/* 800D9754  28 03 00 00 */	cmplwi r3, 0
/* 800D9758  41 82 00 0C */	beq lbl_800D9764
/* 800D975C  38 63 07 40 */	addi r3, r3, 0x740
/* 800D9760  48 08 55 9D */	bl clearData__16daPy_actorKeep_cFv
lbl_800D9764:
/* 800D9764  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 800D9768  D0 15 34 80 */	stfs f0, 0x3480(r21)
/* 800D976C  38 00 00 00 */	li r0, 0
/* 800D9770  B0 15 30 14 */	sth r0, 0x3014(r21)
/* 800D9774  2C 16 FF FD */	cmpwi r22, -3
/* 800D9778  40 82 00 70 */	bne lbl_800D97E8
/* 800D977C  A8 15 2F FE */	lha r0, 0x2ffe(r21)
/* 800D9780  B0 15 04 DE */	sth r0, 0x4de(r21)
/* 800D9784  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 800D9788  A8 15 04 DE */	lha r0, 0x4de(r21)
/* 800D978C  7C 03 00 50 */	subf r0, r3, r0
/* 800D9790  7C 03 07 34 */	extsh r3, r0
/* 800D9794  4B FD 9D 01 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800D9798  7C 7D 1B 78 */	mr r29, r3
/* 800D979C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D97A0  D0 21 00 08 */	stfs f1, 8(r1)
/* 800D97A4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D97A8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800D97AC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800D97B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D97B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D97B8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D97BC  38 80 00 06 */	li r4, 6
/* 800D97C0  38 A0 00 1F */	li r5, 0x1f
/* 800D97C4  38 C1 00 08 */	addi r6, r1, 8
/* 800D97C8  4B F9 62 5D */	bl StartShock__12dVibration_cFii4cXyz
/* 800D97CC  7E A3 AB 78 */	mr r3, r21
/* 800D97D0  80 95 31 8C */	lwz r4, 0x318c(r21)
/* 800D97D4  4B FF DC A5 */	bl setDamagePointNormal__9daAlink_cFi
/* 800D97D8  80 15 05 74 */	lwz r0, 0x574(r21)
/* 800D97DC  60 00 40 00 */	ori r0, r0, 0x4000
/* 800D97E0  90 15 05 74 */	stw r0, 0x574(r21)
/* 800D97E4  48 00 02 18 */	b lbl_800D99FC
lbl_800D97E8:
/* 800D97E8  2C 16 FF FC */	cmpwi r22, -4
/* 800D97EC  40 82 00 1C */	bne lbl_800D9808
/* 800D97F0  3B A0 00 01 */	li r29, 1
/* 800D97F4  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 800D97F8  3C 63 00 01 */	addis r3, r3, 1
/* 800D97FC  38 03 80 00 */	addi r0, r3, -32768
/* 800D9800  B0 15 04 DE */	sth r0, 0x4de(r21)
/* 800D9804  48 00 01 F8 */	b lbl_800D99FC
lbl_800D9808:
/* 800D9808  2C 16 FF FE */	cmpwi r22, -2
/* 800D980C  40 82 00 64 */	bne lbl_800D9870
/* 800D9810  80 15 06 0C */	lwz r0, 0x60c(r21)
/* 800D9814  7C 1D 03 78 */	mr r29, r0
/* 800D9818  2C 00 00 00 */	cmpwi r0, 0
/* 800D981C  40 82 00 10 */	bne lbl_800D982C
/* 800D9820  A8 15 04 E6 */	lha r0, 0x4e6(r21)
/* 800D9824  B0 15 04 DE */	sth r0, 0x4de(r21)
/* 800D9828  48 00 01 D4 */	b lbl_800D99FC
lbl_800D982C:
/* 800D982C  2C 00 00 02 */	cmpwi r0, 2
/* 800D9830  40 82 00 14 */	bne lbl_800D9844
/* 800D9834  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 800D9838  38 03 40 00 */	addi r0, r3, 0x4000
/* 800D983C  B0 15 04 DE */	sth r0, 0x4de(r21)
/* 800D9840  48 00 01 BC */	b lbl_800D99FC
lbl_800D9844:
/* 800D9844  2C 00 00 03 */	cmpwi r0, 3
/* 800D9848  40 82 00 14 */	bne lbl_800D985C
/* 800D984C  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 800D9850  38 03 C0 00 */	addi r0, r3, -16384
/* 800D9854  B0 15 04 DE */	sth r0, 0x4de(r21)
/* 800D9858  48 00 01 A4 */	b lbl_800D99FC
lbl_800D985C:
/* 800D985C  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 800D9860  3C 63 00 01 */	addis r3, r3, 1
/* 800D9864  38 03 80 00 */	addi r0, r3, -32768
/* 800D9868  B0 15 04 DE */	sth r0, 0x4de(r21)
/* 800D986C  48 00 01 90 */	b lbl_800D99FC
lbl_800D9870:
/* 800D9870  2C 16 FF FB */	cmpwi r22, -5
/* 800D9874  40 82 00 3C */	bne lbl_800D98B0
/* 800D9878  2C 1A 00 01 */	cmpwi r26, 1
/* 800D987C  40 82 00 10 */	bne lbl_800D988C
/* 800D9880  80 15 05 74 */	lwz r0, 0x574(r21)
/* 800D9884  64 00 40 00 */	oris r0, r0, 0x4000
/* 800D9888  90 15 05 74 */	stw r0, 0x574(r21)
lbl_800D988C:
/* 800D988C  A8 15 31 1E */	lha r0, 0x311e(r21)
/* 800D9890  B0 15 04 DE */	sth r0, 0x4de(r21)
/* 800D9894  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 800D9898  A8 15 04 DE */	lha r0, 0x4de(r21)
/* 800D989C  7C 03 00 50 */	subf r0, r3, r0
/* 800D98A0  7C 03 07 34 */	extsh r3, r0
/* 800D98A4  4B FD 9B F1 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800D98A8  7C 7D 1B 78 */	mr r29, r3
/* 800D98AC  48 00 01 50 */	b lbl_800D99FC
lbl_800D98B0:
/* 800D98B0  2C 16 FF FF */	cmpwi r22, -1
/* 800D98B4  40 82 00 6C */	bne lbl_800D9920
/* 800D98B8  28 1D 00 00 */	cmplwi r29, 0
/* 800D98BC  41 82 00 48 */	beq lbl_800D9904
/* 800D98C0  7E A3 AB 78 */	mr r3, r21
/* 800D98C4  7F A4 EB 78 */	mr r4, r29
/* 800D98C8  4B FF DC 2D */	bl getDamageVec__9daAlink_cFP12dCcD_GObjInf
/* 800D98CC  48 18 D8 5D */	bl atan2sX_Z__4cXyzCFv
/* 800D98D0  B0 75 04 DE */	sth r3, 0x4de(r21)
/* 800D98D4  7F A3 EB 78 */	mr r3, r29
/* 800D98D8  4B FA AC 71 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 800D98DC  28 03 00 00 */	cmplwi r3, 0
/* 800D98E0  41 82 00 24 */	beq lbl_800D9904
/* 800D98E4  7F A3 EB 78 */	mr r3, r29
/* 800D98E8  4B FA AC 61 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 800D98EC  88 03 00 75 */	lbz r0, 0x75(r3)
/* 800D98F0  28 00 00 02 */	cmplwi r0, 2
/* 800D98F4  40 82 00 10 */	bne lbl_800D9904
/* 800D98F8  80 15 05 74 */	lwz r0, 0x574(r21)
/* 800D98FC  64 00 40 00 */	oris r0, r0, 0x4000
/* 800D9900  90 15 05 74 */	stw r0, 0x574(r21)
lbl_800D9904:
/* 800D9904  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 800D9908  A8 15 04 DE */	lha r0, 0x4de(r21)
/* 800D990C  7C 03 00 50 */	subf r0, r3, r0
/* 800D9910  7C 03 07 34 */	extsh r3, r0
/* 800D9914  4B FD 9B 81 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800D9918  7C 7D 1B 78 */	mr r29, r3
/* 800D991C  48 00 00 E0 */	b lbl_800D99FC
lbl_800D9920:
/* 800D9920  2C 16 FF FA */	cmpwi r22, -6
/* 800D9924  40 82 00 44 */	bne lbl_800D9968
/* 800D9928  A8 75 31 02 */	lha r3, 0x3102(r21)
/* 800D992C  3C 63 00 01 */	addis r3, r3, 1
/* 800D9930  38 03 80 00 */	addi r0, r3, -32768
/* 800D9934  B0 15 04 DE */	sth r0, 0x4de(r21)
/* 800D9938  A8 75 04 E6 */	lha r3, 0x4e6(r21)
/* 800D993C  A8 15 04 DE */	lha r0, 0x4de(r21)
/* 800D9940  7C 03 00 50 */	subf r0, r3, r0
/* 800D9944  7C 03 07 34 */	extsh r3, r0
/* 800D9948  4B FD 9B 4D */	bl getDirectionFromAngle__9daAlink_cFs
/* 800D994C  7C 7D 1B 78 */	mr r29, r3
/* 800D9950  80 15 31 A0 */	lwz r0, 0x31a0(r21)
/* 800D9954  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800D9958  90 15 31 A0 */	stw r0, 0x31a0(r21)
/* 800D995C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D9960  D0 15 34 80 */	stfs f0, 0x3480(r21)
/* 800D9964  48 00 00 98 */	b lbl_800D99FC
lbl_800D9968:
/* 800D9968  80 15 05 74 */	lwz r0, 0x574(r21)
/* 800D996C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D9970  41 82 00 3C */	beq lbl_800D99AC
/* 800D9974  2C 16 00 2D */	cmpwi r22, 0x2d
/* 800D9978  40 82 00 0C */	bne lbl_800D9984
/* 800D997C  3B A0 00 01 */	li r29, 1
/* 800D9980  48 00 00 60 */	b lbl_800D99E0
lbl_800D9984:
/* 800D9984  2C 16 00 2E */	cmpwi r22, 0x2e
/* 800D9988  40 82 00 0C */	bne lbl_800D9994
/* 800D998C  3B A0 00 02 */	li r29, 2
/* 800D9990  48 00 00 50 */	b lbl_800D99E0
lbl_800D9994:
/* 800D9994  2C 16 00 2F */	cmpwi r22, 0x2f
/* 800D9998  40 82 00 0C */	bne lbl_800D99A4
/* 800D999C  3B A0 00 03 */	li r29, 3
/* 800D99A0  48 00 00 40 */	b lbl_800D99E0
lbl_800D99A4:
/* 800D99A4  3B A0 00 00 */	li r29, 0
/* 800D99A8  48 00 00 38 */	b lbl_800D99E0
lbl_800D99AC:
/* 800D99AC  2C 16 00 88 */	cmpwi r22, 0x88
/* 800D99B0  40 82 00 0C */	bne lbl_800D99BC
/* 800D99B4  3B A0 00 01 */	li r29, 1
/* 800D99B8  48 00 00 28 */	b lbl_800D99E0
lbl_800D99BC:
/* 800D99BC  2C 16 00 89 */	cmpwi r22, 0x89
/* 800D99C0  40 82 00 0C */	bne lbl_800D99CC
/* 800D99C4  3B A0 00 02 */	li r29, 2
/* 800D99C8  48 00 00 18 */	b lbl_800D99E0
lbl_800D99CC:
/* 800D99CC  2C 16 00 8A */	cmpwi r22, 0x8a
/* 800D99D0  40 82 00 0C */	bne lbl_800D99DC
/* 800D99D4  3B A0 00 03 */	li r29, 3
/* 800D99D8  48 00 00 08 */	b lbl_800D99E0
lbl_800D99DC:
/* 800D99DC  3B A0 00 00 */	li r29, 0
lbl_800D99E0:
/* 800D99E0  7E A3 AB 78 */	mr r3, r21
/* 800D99E4  7F 04 C3 78 */	mr r4, r24
/* 800D99E8  38 A0 00 00 */	li r5, 0
/* 800D99EC  7F 26 CB 78 */	mr r6, r25
/* 800D99F0  4B FD 41 89 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800D99F4  38 00 00 01 */	li r0, 1
/* 800D99F8  B0 15 30 14 */	sth r0, 0x3014(r21)
lbl_800D99FC:
/* 800D99FC  2C 1D 00 00 */	cmpwi r29, 0
/* 800D9A00  40 82 00 48 */	bne lbl_800D9A48
/* 800D9A04  80 15 05 74 */	lwz r0, 0x574(r21)
/* 800D9A08  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D9A0C  41 82 00 18 */	beq lbl_800D9A24
/* 800D9A10  38 00 00 29 */	li r0, 0x29
/* 800D9A14  90 15 31 98 */	stw r0, 0x3198(r21)
/* 800D9A18  38 00 00 00 */	li r0, 0
/* 800D9A1C  B0 15 30 0C */	sth r0, 0x300c(r21)
/* 800D9A20  48 00 00 14 */	b lbl_800D9A34
lbl_800D9A24:
/* 800D9A24  38 00 00 84 */	li r0, 0x84
/* 800D9A28  90 15 31 98 */	stw r0, 0x3198(r21)
/* 800D9A2C  38 00 3F FF */	li r0, 0x3fff
/* 800D9A30  B0 15 30 0C */	sth r0, 0x300c(r21)
lbl_800D9A34:
/* 800D9A34  38 00 00 01 */	li r0, 1
/* 800D9A38  B0 15 30 0E */	sth r0, 0x300e(r21)
/* 800D9A3C  A8 15 04 DE */	lha r0, 0x4de(r21)
/* 800D9A40  B0 15 04 E6 */	sth r0, 0x4e6(r21)
/* 800D9A44  48 00 00 EC */	b lbl_800D9B30
lbl_800D9A48:
/* 800D9A48  2C 1D 00 03 */	cmpwi r29, 3
/* 800D9A4C  40 82 00 4C */	bne lbl_800D9A98
/* 800D9A50  80 15 05 74 */	lwz r0, 0x574(r21)
/* 800D9A54  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D9A58  41 82 00 18 */	beq lbl_800D9A70
/* 800D9A5C  38 00 00 2A */	li r0, 0x2a
/* 800D9A60  90 15 31 98 */	stw r0, 0x3198(r21)
/* 800D9A64  38 00 20 00 */	li r0, 0x2000
/* 800D9A68  B0 15 30 0C */	sth r0, 0x300c(r21)
/* 800D9A6C  48 00 00 14 */	b lbl_800D9A80
lbl_800D9A70:
/* 800D9A70  38 00 00 85 */	li r0, 0x85
/* 800D9A74  90 15 31 98 */	stw r0, 0x3198(r21)
/* 800D9A78  38 00 3F FF */	li r0, 0x3fff
/* 800D9A7C  B0 15 30 0C */	sth r0, 0x300c(r21)
lbl_800D9A80:
/* 800D9A80  38 00 00 00 */	li r0, 0
/* 800D9A84  B0 15 30 0E */	sth r0, 0x300e(r21)
/* 800D9A88  A8 75 04 DE */	lha r3, 0x4de(r21)
/* 800D9A8C  38 03 40 00 */	addi r0, r3, 0x4000
/* 800D9A90  B0 15 04 E6 */	sth r0, 0x4e6(r21)
/* 800D9A94  48 00 00 9C */	b lbl_800D9B30
lbl_800D9A98:
/* 800D9A98  2C 1D 00 02 */	cmpwi r29, 2
/* 800D9A9C  40 82 00 4C */	bne lbl_800D9AE8
/* 800D9AA0  80 15 05 74 */	lwz r0, 0x574(r21)
/* 800D9AA4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D9AA8  41 82 00 18 */	beq lbl_800D9AC0
/* 800D9AAC  38 00 00 2B */	li r0, 0x2b
/* 800D9AB0  90 15 31 98 */	stw r0, 0x3198(r21)
/* 800D9AB4  38 00 E0 00 */	li r0, -8192
/* 800D9AB8  B0 15 30 0C */	sth r0, 0x300c(r21)
/* 800D9ABC  48 00 00 14 */	b lbl_800D9AD0
lbl_800D9AC0:
/* 800D9AC0  38 00 00 86 */	li r0, 0x86
/* 800D9AC4  90 15 31 98 */	stw r0, 0x3198(r21)
/* 800D9AC8  38 00 C0 01 */	li r0, -16383
/* 800D9ACC  B0 15 30 0C */	sth r0, 0x300c(r21)
lbl_800D9AD0:
/* 800D9AD0  38 00 00 00 */	li r0, 0
/* 800D9AD4  B0 15 30 0E */	sth r0, 0x300e(r21)
/* 800D9AD8  A8 75 04 DE */	lha r3, 0x4de(r21)
/* 800D9ADC  38 03 C0 00 */	addi r0, r3, -16384
/* 800D9AE0  B0 15 04 E6 */	sth r0, 0x4e6(r21)
/* 800D9AE4  48 00 00 4C */	b lbl_800D9B30
lbl_800D9AE8:
/* 800D9AE8  80 15 05 74 */	lwz r0, 0x574(r21)
/* 800D9AEC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D9AF0  41 82 00 18 */	beq lbl_800D9B08
/* 800D9AF4  38 00 00 28 */	li r0, 0x28
/* 800D9AF8  90 15 31 98 */	stw r0, 0x3198(r21)
/* 800D9AFC  38 00 C0 01 */	li r0, -16383
/* 800D9B00  B0 15 30 0C */	sth r0, 0x300c(r21)
/* 800D9B04  48 00 00 14 */	b lbl_800D9B18
lbl_800D9B08:
/* 800D9B08  38 00 00 83 */	li r0, 0x83
/* 800D9B0C  90 15 31 98 */	stw r0, 0x3198(r21)
/* 800D9B10  38 00 C0 01 */	li r0, -16383
/* 800D9B14  B0 15 30 0C */	sth r0, 0x300c(r21)
lbl_800D9B18:
/* 800D9B18  38 00 00 01 */	li r0, 1
/* 800D9B1C  B0 15 30 0E */	sth r0, 0x300e(r21)
/* 800D9B20  A8 75 04 DE */	lha r3, 0x4de(r21)
/* 800D9B24  3C 63 00 01 */	addis r3, r3, 1
/* 800D9B28  38 03 80 00 */	addi r0, r3, -32768
/* 800D9B2C  B0 15 04 E6 */	sth r0, 0x4e6(r21)
lbl_800D9B30:
/* 800D9B30  80 15 05 74 */	lwz r0, 0x574(r21)
/* 800D9B34  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D9B38  41 82 00 64 */	beq lbl_800D9B9C
/* 800D9B3C  2C 17 00 00 */	cmpwi r23, 0
/* 800D9B40  3B 1F 1C B0 */	addi r24, r31, 0x1cb0
/* 800D9B44  41 82 00 08 */	beq lbl_800D9B4C
/* 800D9B48  3B 1F 1C 44 */	addi r24, r31, 0x1c44
lbl_800D9B4C:
/* 800D9B4C  7F 1C C3 78 */	mr r28, r24
/* 800D9B50  7E A3 AB 78 */	mr r3, r21
/* 800D9B54  C0 38 00 54 */	lfs f1, 0x54(r24)
/* 800D9B58  C0 55 05 34 */	lfs f2, 0x534(r21)
/* 800D9B5C  38 80 00 00 */	li r4, 0
/* 800D9B60  4B FE 1C 11 */	bl setSpecialGravity__9daAlink_cFffi
/* 800D9B64  A8 18 00 50 */	lha r0, 0x50(r24)
/* 800D9B68  B0 15 30 10 */	sth r0, 0x3010(r21)
/* 800D9B6C  C0 18 00 64 */	lfs f0, 0x64(r24)
/* 800D9B70  D0 15 34 78 */	stfs f0, 0x3478(r21)
/* 800D9B74  C0 18 00 68 */	lfs f0, 0x68(r24)
/* 800D9B78  D0 15 34 7C */	stfs f0, 0x347c(r21)
/* 800D9B7C  7E A3 AB 78 */	mr r3, r21
/* 800D9B80  80 95 31 98 */	lwz r4, 0x3198(r21)
/* 800D9B84  C0 38 00 58 */	lfs f1, 0x58(r24)
/* 800D9B88  48 04 FB 21 */	bl setSingleAnimeWolfBaseMorf__9daAlink_cFQ29daAlink_c12daAlink_WANMf
/* 800D9B8C  7E A3 AB 78 */	mr r3, r21
/* 800D9B90  38 80 00 91 */	li r4, 0x91
/* 800D9B94  4B FD 5D 0D */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800D9B98  48 00 00 54 */	b lbl_800D9BEC
lbl_800D9B9C:
/* 800D9B9C  2C 17 00 00 */	cmpwi r23, 0
/* 800D9BA0  3B 1F 0D 14 */	addi r24, r31, 0xd14
/* 800D9BA4  41 82 00 08 */	beq lbl_800D9BAC
/* 800D9BA8  3B 1F 0C 58 */	addi r24, r31, 0xc58
lbl_800D9BAC:
/* 800D9BAC  7F 1B C3 78 */	mr r27, r24
/* 800D9BB0  7E A3 AB 78 */	mr r3, r21
/* 800D9BB4  C0 38 00 A4 */	lfs f1, 0xa4(r24)
/* 800D9BB8  C0 55 05 34 */	lfs f2, 0x534(r21)
/* 800D9BBC  38 80 00 00 */	li r4, 0
/* 800D9BC0  4B FE 1B B1 */	bl setSpecialGravity__9daAlink_cFffi
/* 800D9BC4  A8 18 00 A0 */	lha r0, 0xa0(r24)
/* 800D9BC8  B0 15 30 10 */	sth r0, 0x3010(r21)
/* 800D9BCC  C0 18 00 B4 */	lfs f0, 0xb4(r24)
/* 800D9BD0  D0 15 34 78 */	stfs f0, 0x3478(r21)
/* 800D9BD4  C0 18 00 B8 */	lfs f0, 0xb8(r24)
/* 800D9BD8  D0 15 34 7C */	stfs f0, 0x347c(r21)
/* 800D9BDC  7E A3 AB 78 */	mr r3, r21
/* 800D9BE0  80 95 31 98 */	lwz r4, 0x3198(r21)
/* 800D9BE4  C0 38 00 A8 */	lfs f1, 0xa8(r24)
/* 800D9BE8  4B FD 33 C9 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
lbl_800D9BEC:
/* 800D9BEC  2C 16 00 00 */	cmpwi r22, 0
/* 800D9BF0  40 80 01 A0 */	bge lbl_800D9D90
/* 800D9BF4  80 15 05 78 */	lwz r0, 0x578(r21)
/* 800D9BF8  54 00 01 D1 */	rlwinm. r0, r0, 0, 7, 8
/* 800D9BFC  41 82 00 40 */	beq lbl_800D9C3C
/* 800D9C00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D9C04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D9C08  80 63 5D B8 */	lwz r3, 0x5db8(r3)
/* 800D9C0C  28 03 00 00 */	cmplwi r3, 0
/* 800D9C10  41 82 00 2C */	beq lbl_800D9C3C
/* 800D9C14  A8 03 17 08 */	lha r0, 0x1708(r3)
/* 800D9C18  7C 00 07 35 */	extsh. r0, r0
/* 800D9C1C  41 82 00 20 */	beq lbl_800D9C3C
/* 800D9C20  C0 02 93 B0 */	lfs f0, lit_10039(r2)
/* 800D9C24  D0 15 33 98 */	stfs f0, 0x3398(r21)
/* 800D9C28  D0 15 04 FC */	stfs f0, 0x4fc(r21)
/* 800D9C2C  80 15 31 A0 */	lwz r0, 0x31a0(r21)
/* 800D9C30  60 00 20 00 */	ori r0, r0, 0x2000
/* 800D9C34  90 15 31 A0 */	stw r0, 0x31a0(r21)
/* 800D9C38  48 00 00 8C */	b lbl_800D9CC4
lbl_800D9C3C:
/* 800D9C3C  2C 17 00 00 */	cmpwi r23, 0
/* 800D9C40  40 82 00 28 */	bne lbl_800D9C68
/* 800D9C44  7E A3 AB 78 */	mr r3, r21
/* 800D9C48  4B FF D1 7D */	bl checkMiddleBossGoronRoom__9daAlink_cFv
/* 800D9C4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D9C50  41 82 00 18 */	beq lbl_800D9C68
/* 800D9C54  C0 02 93 B4 */	lfs f0, lit_10040(r2)
/* 800D9C58  D0 15 33 98 */	stfs f0, 0x3398(r21)
/* 800D9C5C  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800D9C60  D0 15 04 FC */	stfs f0, 0x4fc(r21)
/* 800D9C64  48 00 00 60 */	b lbl_800D9CC4
lbl_800D9C68:
/* 800D9C68  2C 16 FF FD */	cmpwi r22, -3
/* 800D9C6C  40 82 00 18 */	bne lbl_800D9C84
/* 800D9C70  C0 15 34 08 */	lfs f0, 0x3408(r21)
/* 800D9C74  D0 15 33 98 */	stfs f0, 0x3398(r21)
/* 800D9C78  C0 15 34 0C */	lfs f0, 0x340c(r21)
/* 800D9C7C  D0 15 04 FC */	stfs f0, 0x4fc(r21)
/* 800D9C80  48 00 00 44 */	b lbl_800D9CC4
lbl_800D9C84:
/* 800D9C84  80 15 05 74 */	lwz r0, 0x574(r21)
/* 800D9C88  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D9C8C  41 82 00 18 */	beq lbl_800D9CA4
/* 800D9C90  C0 1C 00 5C */	lfs f0, 0x5c(r28)
/* 800D9C94  D0 15 33 98 */	stfs f0, 0x3398(r21)
/* 800D9C98  C0 1C 00 60 */	lfs f0, 0x60(r28)
/* 800D9C9C  D0 15 04 FC */	stfs f0, 0x4fc(r21)
/* 800D9CA0  48 00 00 14 */	b lbl_800D9CB4
lbl_800D9CA4:
/* 800D9CA4  C0 1B 00 AC */	lfs f0, 0xac(r27)
/* 800D9CA8  D0 15 33 98 */	stfs f0, 0x3398(r21)
/* 800D9CAC  C0 1B 00 B0 */	lfs f0, 0xb0(r27)
/* 800D9CB0  D0 15 04 FC */	stfs f0, 0x4fc(r21)
lbl_800D9CB4:
/* 800D9CB4  2C 16 FF FA */	cmpwi r22, -6
/* 800D9CB8  40 82 00 0C */	bne lbl_800D9CC4
/* 800D9CBC  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 800D9CC0  D0 15 34 78 */	stfs f0, 0x3478(r21)
lbl_800D9CC4:
/* 800D9CC4  2C 1A 00 02 */	cmpwi r26, 2
/* 800D9CC8  41 82 01 38 */	beq lbl_800D9E00
/* 800D9CCC  2C 16 FF FA */	cmpwi r22, -6
/* 800D9CD0  41 82 00 74 */	beq lbl_800D9D44
/* 800D9CD4  80 75 05 74 */	lwz r3, 0x574(r21)
/* 800D9CD8  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 800D9CDC  41 82 00 24 */	beq lbl_800D9D00
/* 800D9CE0  7E A3 AB 78 */	mr r3, r21
/* 800D9CE4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010034@ha */
/* 800D9CE8  38 84 00 34 */	addi r4, r4, 0x0034 /* 0x00010034@l */
/* 800D9CEC  81 95 06 28 */	lwz r12, 0x628(r21)
/* 800D9CF0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800D9CF4  7D 89 03 A6 */	mtctr r12
/* 800D9CF8  4E 80 04 21 */	bctrl 
/* 800D9CFC  48 00 00 48 */	b lbl_800D9D44
lbl_800D9D00:
/* 800D9D00  54 60 00 43 */	rlwinm. r0, r3, 0, 1, 1
/* 800D9D04  41 82 00 24 */	beq lbl_800D9D28
/* 800D9D08  7E A3 AB 78 */	mr r3, r21
/* 800D9D0C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010053@ha */
/* 800D9D10  38 84 00 53 */	addi r4, r4, 0x0053 /* 0x00010053@l */
/* 800D9D14  81 95 06 28 */	lwz r12, 0x628(r21)
/* 800D9D18  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800D9D1C  7D 89 03 A6 */	mtctr r12
/* 800D9D20  4E 80 04 21 */	bctrl 
/* 800D9D24  48 00 00 20 */	b lbl_800D9D44
lbl_800D9D28:
/* 800D9D28  7E A3 AB 78 */	mr r3, r21
/* 800D9D2C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010003@ha */
/* 800D9D30  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00010003@l */
/* 800D9D34  81 95 06 28 */	lwz r12, 0x628(r21)
/* 800D9D38  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800D9D3C  7D 89 03 A6 */	mtctr r12
/* 800D9D40  4E 80 04 21 */	bctrl 
lbl_800D9D44:
/* 800D9D44  80 15 05 74 */	lwz r0, 0x574(r21)
/* 800D9D48  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 800D9D4C  41 82 00 24 */	beq lbl_800D9D70
/* 800D9D50  7E A3 AB 78 */	mr r3, r21
/* 800D9D54  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002004C@ha */
/* 800D9D58  38 84 00 4C */	addi r4, r4, 0x004C /* 0x0002004C@l */
/* 800D9D5C  81 95 06 28 */	lwz r12, 0x628(r21)
/* 800D9D60  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800D9D64  7D 89 03 A6 */	mtctr r12
/* 800D9D68  4E 80 04 21 */	bctrl 
/* 800D9D6C  48 00 00 94 */	b lbl_800D9E00
lbl_800D9D70:
/* 800D9D70  7E A3 AB 78 */	mr r3, r21
/* 800D9D74  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020015@ha */
/* 800D9D78  38 84 00 15 */	addi r4, r4, 0x0015 /* 0x00020015@l */
/* 800D9D7C  81 95 06 28 */	lwz r12, 0x628(r21)
/* 800D9D80  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800D9D84  7D 89 03 A6 */	mtctr r12
/* 800D9D88  4E 80 04 21 */	bctrl 
/* 800D9D8C  48 00 00 74 */	b lbl_800D9E00
lbl_800D9D90:
/* 800D9D90  80 15 05 74 */	lwz r0, 0x574(r21)
/* 800D9D94  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D9D98  41 82 00 10 */	beq lbl_800D9DA8
/* 800D9D9C  C0 1C 00 64 */	lfs f0, 0x64(r28)
/* 800D9DA0  D0 15 33 98 */	stfs f0, 0x3398(r21)
/* 800D9DA4  48 00 00 0C */	b lbl_800D9DB0
lbl_800D9DA8:
/* 800D9DA8  C0 1B 00 B4 */	lfs f0, 0xb4(r27)
/* 800D9DAC  D0 15 33 98 */	stfs f0, 0x3398(r21)
lbl_800D9DB0:
/* 800D9DB0  A8 15 04 DE */	lha r0, 0x4de(r21)
/* 800D9DB4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800D9DB8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800D9DBC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800D9DC0  7C 03 04 2E */	lfsx f0, r3, r0
/* 800D9DC4  C0 35 04 D0 */	lfs f1, 0x4d0(r21)
/* 800D9DC8  C0 42 93 BC */	lfs f2, lit_10042(r2)
/* 800D9DCC  EC 02 00 32 */	fmuls f0, f2, f0
/* 800D9DD0  EC 01 00 2A */	fadds f0, f1, f0
/* 800D9DD4  D0 15 04 D0 */	stfs f0, 0x4d0(r21)
/* 800D9DD8  A8 15 04 DE */	lha r0, 0x4de(r21)
/* 800D9DDC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800D9DE0  7C 63 02 14 */	add r3, r3, r0
/* 800D9DE4  C0 03 00 04 */	lfs f0, 4(r3)
/* 800D9DE8  C0 35 04 D8 */	lfs f1, 0x4d8(r21)
/* 800D9DEC  EC 02 00 32 */	fmuls f0, f2, f0
/* 800D9DF0  EC 01 00 2A */	fadds f0, f1, f0
/* 800D9DF4  D0 15 04 D8 */	stfs f0, 0x4d8(r21)
/* 800D9DF8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D9DFC  D0 15 04 FC */	stfs f0, 0x4fc(r21)
lbl_800D9E00:
/* 800D9E00  38 00 00 00 */	li r0, 0
/* 800D9E04  B0 15 05 9C */	sth r0, 0x59c(r21)
/* 800D9E08  B0 15 05 9E */	sth r0, 0x59e(r21)
/* 800D9E0C  B0 15 05 A0 */	sth r0, 0x5a0(r21)
/* 800D9E10  B0 15 30 08 */	sth r0, 0x3008(r21)
/* 800D9E14  B2 F5 30 0A */	sth r23, 0x300a(r21)
/* 800D9E18  38 00 00 14 */	li r0, 0x14
/* 800D9E1C  B0 15 30 12 */	sth r0, 0x3012(r21)
/* 800D9E20  80 15 05 78 */	lwz r0, 0x578(r21)
/* 800D9E24  54 00 01 D1 */	rlwinm. r0, r0, 0, 7, 8
/* 800D9E28  41 82 00 28 */	beq lbl_800D9E50
/* 800D9E2C  80 15 19 9C */	lwz r0, 0x199c(r21)
/* 800D9E30  60 00 00 04 */	ori r0, r0, 4
/* 800D9E34  90 15 19 9C */	stw r0, 0x199c(r21)
/* 800D9E38  80 15 19 9C */	lwz r0, 0x199c(r21)
/* 800D9E3C  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800D9E40  90 15 19 9C */	stw r0, 0x199c(r21)
/* 800D9E44  80 15 31 A0 */	lwz r0, 0x31a0(r21)
/* 800D9E48  60 00 40 00 */	ori r0, r0, 0x4000
/* 800D9E4C  90 15 31 A0 */	stw r0, 0x31a0(r21)
lbl_800D9E50:
/* 800D9E50  28 1E 00 00 */	cmplwi r30, 0
/* 800D9E54  41 82 00 18 */	beq lbl_800D9E6C
/* 800D9E58  80 15 31 A0 */	lwz r0, 0x31a0(r21)
/* 800D9E5C  60 00 20 00 */	ori r0, r0, 0x2000
/* 800D9E60  90 15 31 A0 */	stw r0, 0x31a0(r21)
/* 800D9E64  38 00 00 05 */	li r0, 5
/* 800D9E68  90 15 32 CC */	stw r0, 0x32cc(r21)
lbl_800D9E6C:
/* 800D9E6C  38 60 00 01 */	li r3, 1
lbl_800D9E70:
/* 800D9E70  39 61 00 50 */	addi r11, r1, 0x50
/* 800D9E74  48 28 83 95 */	bl _restgpr_21
/* 800D9E78  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800D9E7C  7C 08 03 A6 */	mtlr r0
/* 800D9E80  38 21 00 50 */	addi r1, r1, 0x50
/* 800D9E84  4E 80 00 20 */	blr 
