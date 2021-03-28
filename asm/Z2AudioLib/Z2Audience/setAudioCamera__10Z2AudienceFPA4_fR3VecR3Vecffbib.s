lbl_802BD2DC:
/* 802BD2DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BD2E0  7C 08 02 A6 */	mflr r0
/* 802BD2E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BD2E8  39 61 00 20 */	addi r11, r1, 0x20
/* 802BD2EC  48 0A 4E F1 */	bl _savegpr_29
/* 802BD2F0  7C 7D 1B 78 */	mr r29, r3
/* 802BD2F4  7D 1E 43 78 */	mr r30, r8
/* 802BD2F8  1C 7E 00 74 */	mulli r3, r30, 0x74
/* 802BD2FC  3B E3 01 34 */	addi r31, r3, 0x134
/* 802BD300  7F FD FA 14 */	add r31, r29, r31
/* 802BD304  7F E3 FB 78 */	mr r3, r31
/* 802BD308  7D 28 4B 78 */	mr r8, r9
/* 802BD30C  4B FF F5 A1 */	bl setCameraState__13Z2AudioCameraFPA4_fR3VecR3Vecffbb
/* 802BD310  80 7D 01 D0 */	lwz r3, 0x1d0(r29)
/* 802BD314  7F E4 FB 78 */	mr r4, r31
/* 802BD318  7F C5 F3 78 */	mr r5, r30
/* 802BD31C  4B FF FA F9 */	bl setMicState__9Z2SpotMicFP13Z2AudioCamerai
/* 802BD320  39 61 00 20 */	addi r11, r1, 0x20
/* 802BD324  48 0A 4F 05 */	bl _restgpr_29
/* 802BD328  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BD32C  7C 08 03 A6 */	mtlr r0
/* 802BD330  38 21 00 20 */	addi r1, r1, 0x20
/* 802BD334  4E 80 00 20 */	blr 
