.include "macros.inc"

.section .text, "ax" # 8029e130


.global JASDriver_NS_setDSPLevel
JASDriver_NS_setDSPLevel:
/* 8029E130 0029B070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E134 0029B074  7C 08 02 A6 */	mflr r0
/* 8029E138 0029B078  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E13C 0029B07C  4B FF F8 C9 */	bl JASDsp_NS_setDSPMixerLevel
/* 8029E140 0029B080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E144 0029B084  7C 08 03 A6 */	mtlr r0
/* 8029E148 0029B088  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E14C 0029B08C  4E 80 00 20 */	blr 

.global JASDriver_NS_getChannelLevel_dsp
JASDriver_NS_getChannelLevel_dsp:
/* 8029E150 0029B090  A0 6D 82 40 */	lhz r3, lbl_804507C0-_SDA_BASE_(r13)
/* 8029E154 0029B094  4E 80 00 20 */	blr 

.global JASDriver_NS_getDSPLevel
JASDriver_NS_getDSPLevel:
/* 8029E158 0029B098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E15C 0029B09C  7C 08 02 A6 */	mflr r0
/* 8029E160 0029B0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E164 0029B0A4  4B FF F8 CD */	bl JASDsp_NS_getDSPMixerLevel
/* 8029E168 0029B0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E16C 0029B0AC  7C 08 03 A6 */	mtlr r0
/* 8029E170 0029B0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E174 0029B0B4  4E 80 00 20 */	blr 

.global setOutputMode__9JASDriverFUl
setOutputMode__9JASDriverFUl:
/* 8029E178 0029B0B8  90 6D 82 44 */	stw r3, lbl_804507C4-_SDA_BASE_(r13)
/* 8029E17C 0029B0BC  4E 80 00 20 */	blr 

.global JASDriver_NS_getOutputMode
JASDriver_NS_getOutputMode:
/* 8029E180 0029B0C0  80 6D 82 44 */	lwz r3, lbl_804507C4-_SDA_BASE_(r13)
/* 8029E184 0029B0C4  4E 80 00 20 */	blr 

.global JASDriver_NS_waitSubFrame
JASDriver_NS_waitSubFrame:
/* 8029E188 0029B0C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E18C 0029B0CC  7C 08 02 A6 */	mflr r0
/* 8029E190 0029B0D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E194 0029B0D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029E198 0029B0D8  4B FF EB 3D */	bl JASDriver_NS_getSubFrameCounter
/* 8029E19C 0029B0DC  7C 7F 1B 78 */	mr r31, r3
lbl_8029E1A0:
/* 8029E1A0 0029B0E0  48 0A 30 B1 */	bl OSYieldThread
/* 8029E1A4 0029B0E4  4B FF EB 31 */	bl JASDriver_NS_getSubFrameCounter
/* 8029E1A8 0029B0E8  7C 1F 18 40 */	cmplw r31, r3
/* 8029E1AC 0029B0EC  41 82 FF F4 */	beq lbl_8029E1A0
/* 8029E1B0 0029B0F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029E1B4 0029B0F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E1B8 0029B0F8  7C 08 03 A6 */	mtlr r0
/* 8029E1BC 0029B0FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E1C0 0029B100  4E 80 00 20 */	blr 

.global JASDriver_NS_rejectCallback
JASDriver_NS_rejectCallback:
/* 8029E1C4 0029B104  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8029E1C8 0029B108  7C 08 02 A6 */	mflr r0
/* 8029E1CC 0029B10C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8029E1D0 0029B110  39 61 00 20 */	addi r11, r1, 0x20
/* 8029E1D4 0029B114  48 0C 40 05 */	bl _savegpr_28
/* 8029E1D8 0029B118  7C 7C 1B 78 */	mr r28, r3
/* 8029E1DC 0029B11C  7C 9D 23 78 */	mr r29, r4
/* 8029E1E0 0029B120  3C 60 80 43 */	lis r3, lbl_80431C78@ha
/* 8029E1E4 0029B124  3B C3 1C 78 */	addi r30, r3, lbl_80431C78@l
/* 8029E1E8 0029B128  38 7E 00 00 */	addi r3, r30, 0
/* 8029E1EC 0029B12C  7F 84 E3 78 */	mr r4, r28
/* 8029E1F0 0029B130  7F A5 EB 78 */	mr r5, r29
/* 8029E1F4 0029B134  4B FF 1E 3D */	bl JASCallbackMgr_NS_reject
/* 8029E1F8 0029B138  7C 7F 1B 78 */	mr r31, r3
/* 8029E1FC 0029B13C  38 7E 01 00 */	addi r3, r30, 0x100
/* 8029E200 0029B140  7F 84 E3 78 */	mr r4, r28
/* 8029E204 0029B144  7F A5 EB 78 */	mr r5, r29
/* 8029E208 0029B148  4B FF 1E 29 */	bl JASCallbackMgr_NS_reject
/* 8029E20C 0029B14C  7F FF 1A 14 */	add r31, r31, r3
/* 8029E210 0029B150  38 7E 02 00 */	addi r3, r30, 0x200
/* 8029E214 0029B154  7F 84 E3 78 */	mr r4, r28
/* 8029E218 0029B158  7F A5 EB 78 */	mr r5, r29
/* 8029E21C 0029B15C  4B FF 1E 15 */	bl JASCallbackMgr_NS_reject
/* 8029E220 0029B160  7F FF 1A 14 */	add r31, r31, r3
/* 8029E224 0029B164  7F E3 FB 78 */	mr r3, r31
/* 8029E228 0029B168  39 61 00 20 */	addi r11, r1, 0x20
/* 8029E22C 0029B16C  48 0C 3F F9 */	bl _restgpr_28
/* 8029E230 0029B170  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8029E234 0029B174  7C 08 03 A6 */	mtlr r0
/* 8029E238 0029B178  38 21 00 20 */	addi r1, r1, 0x20
/* 8029E23C 0029B17C  4E 80 00 20 */	blr 

.global JASDriver_NS_registerDspSyncCallback
JASDriver_NS_registerDspSyncCallback:
/* 8029E240 0029B180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E244 0029B184  7C 08 02 A6 */	mflr r0
/* 8029E248 0029B188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E24C 0029B18C  7C 60 1B 78 */	mr r0, r3
/* 8029E250 0029B190  7C 85 23 78 */	mr r5, r4
/* 8029E254 0029B194  3C 60 80 43 */	lis r3, lbl_80431C78@ha
/* 8029E258 0029B198  38 63 1C 78 */	addi r3, r3, lbl_80431C78@l
/* 8029E25C 0029B19C  7C 04 03 78 */	mr r4, r0
/* 8029E260 0029B1A0  4B FF 1D 49 */	bl JASCallbackMgr_NS_regist
/* 8029E264 0029B1A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E268 0029B1A8  7C 08 03 A6 */	mtlr r0
/* 8029E26C 0029B1AC  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E270 0029B1B0  4E 80 00 20 */	blr 

.global JASDriver_NS_registerSubFrameCallback
JASDriver_NS_registerSubFrameCallback:
/* 8029E274 0029B1B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E278 0029B1B8  7C 08 02 A6 */	mflr r0
/* 8029E27C 0029B1BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E280 0029B1C0  7C 60 1B 78 */	mr r0, r3
/* 8029E284 0029B1C4  7C 85 23 78 */	mr r5, r4
/* 8029E288 0029B1C8  3C 60 80 43 */	lis r3, lbl_80431D78@ha
/* 8029E28C 0029B1CC  38 63 1D 78 */	addi r3, r3, lbl_80431D78@l
/* 8029E290 0029B1D0  7C 04 03 78 */	mr r4, r0
/* 8029E294 0029B1D4  4B FF 1D 15 */	bl JASCallbackMgr_NS_regist
/* 8029E298 0029B1D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E29C 0029B1DC  7C 08 03 A6 */	mtlr r0
/* 8029E2A0 0029B1E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E2A4 0029B1E4  4E 80 00 20 */	blr 

.global JASDriver_NS_subframeCallback
JASDriver_NS_subframeCallback:
/* 8029E2A8 0029B1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E2AC 0029B1EC  7C 08 02 A6 */	mflr r0
/* 8029E2B0 0029B1F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E2B4 0029B1F4  3C 60 80 43 */	lis r3, lbl_80431D78@ha
/* 8029E2B8 0029B1F8  38 63 1D 78 */	addi r3, r3, lbl_80431D78@l
/* 8029E2BC 0029B1FC  4B FF 1E 09 */	bl JASCallbackMgr_NS_callback
/* 8029E2C0 0029B200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E2C4 0029B204  7C 08 03 A6 */	mtlr r0
/* 8029E2C8 0029B208  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E2CC 0029B20C  4E 80 00 20 */	blr 

.global JASDriver_NS_DSPSyncCallback
JASDriver_NS_DSPSyncCallback:
/* 8029E2D0 0029B210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E2D4 0029B214  7C 08 02 A6 */	mflr r0
/* 8029E2D8 0029B218  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E2DC 0029B21C  3C 60 80 43 */	lis r3, lbl_80431C78@ha
/* 8029E2E0 0029B220  38 63 1C 78 */	addi r3, r3, lbl_80431C78@l
/* 8029E2E4 0029B224  4B FF 1D E1 */	bl JASCallbackMgr_NS_callback
/* 8029E2E8 0029B228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E2EC 0029B22C  7C 08 03 A6 */	mtlr r0
/* 8029E2F0 0029B230  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E2F4 0029B234  4E 80 00 20 */	blr 

.global JASDriver_NS_updateDacCallback
JASDriver_NS_updateDacCallback:
/* 8029E2F8 0029B238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E2FC 0029B23C  7C 08 02 A6 */	mflr r0
/* 8029E300 0029B240  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E304 0029B244  3C 60 80 43 */	lis r3, lbl_80431E78@ha
/* 8029E308 0029B248  38 63 1E 78 */	addi r3, r3, lbl_80431E78@l
/* 8029E30C 0029B24C  4B FF 1D B9 */	bl JASCallbackMgr_NS_callback
/* 8029E310 0029B250  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E314 0029B254  7C 08 03 A6 */	mtlr r0
/* 8029E318 0029B258  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E31C 0029B25C  4E 80 00 20 */	blr 
/* 8029E320 0029B260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E324 0029B264  7C 08 02 A6 */	mflr r0
/* 8029E328 0029B268  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E32C 0029B26C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029E330 0029B270  3C 60 80 43 */	lis r3, lbl_80431C78@ha
/* 8029E334 0029B274  3B E3 1C 78 */	addi r31, r3, lbl_80431C78@l
/* 8029E338 0029B278  38 7F 00 00 */	addi r3, r31, 0
.global JASCallbackMgr_NS_TCallback
/* 8029E33C 0029B27C  3C 80 80 2A */	lis r4, JASCallbackMgr_NS_TCallback@ha
.global JASCallbackMgr_NS_TCallback
/* 8029E340 0029B280  38 84 E3 A0 */	addi r4, r4, JASCallbackMgr_NS_TCallback@l
/* 8029E344 0029B284  38 A0 00 00 */	li r5, 0
/* 8029E348 0029B288  38 C0 00 08 */	li r6, 8
/* 8029E34C 0029B28C  38 E0 00 20 */	li r7, 0x20
/* 8029E350 0029B290  48 0C 3A 11 */	bl func_80361D60
/* 8029E354 0029B294  38 7F 01 00 */	addi r3, r31, 0x100
.global JASCallbackMgr_NS_TCallback
/* 8029E358 0029B298  3C 80 80 2A */	lis r4, JASCallbackMgr_NS_TCallback@ha
.global JASCallbackMgr_NS_TCallback
/* 8029E35C 0029B29C  38 84 E3 A0 */	addi r4, r4, JASCallbackMgr_NS_TCallback@l
/* 8029E360 0029B2A0  38 A0 00 00 */	li r5, 0
/* 8029E364 0029B2A4  38 C0 00 08 */	li r6, 8
/* 8029E368 0029B2A8  38 E0 00 20 */	li r7, 0x20
/* 8029E36C 0029B2AC  48 0C 39 F5 */	bl func_80361D60
/* 8029E370 0029B2B0  38 7F 02 00 */	addi r3, r31, 0x200
.global JASCallbackMgr_NS_TCallback
/* 8029E374 0029B2B4  3C 80 80 2A */	lis r4, JASCallbackMgr_NS_TCallback@ha
.global JASCallbackMgr_NS_TCallback
/* 8029E378 0029B2B8  38 84 E3 A0 */	addi r4, r4, JASCallbackMgr_NS_TCallback@l
/* 8029E37C 0029B2BC  38 A0 00 00 */	li r5, 0
/* 8029E380 0029B2C0  38 C0 00 08 */	li r6, 8
/* 8029E384 0029B2C4  38 E0 00 20 */	li r7, 0x20
/* 8029E388 0029B2C8  48 0C 39 D9 */	bl func_80361D60
/* 8029E38C 0029B2CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029E390 0029B2D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E394 0029B2D4  7C 08 03 A6 */	mtlr r0
/* 8029E398 0029B2D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E39C 0029B2DC  4E 80 00 20 */	blr 
.global JASCallbackMgr_NS_TCallback
JASCallbackMgr_NS_TCallback:
/* 8029E3A0 0029B2E0  38 00 00 00 */	li r0, 0
/* 8029E3A4 0029B2E4  90 03 00 00 */	stw r0, 0(r3)
/* 8029E3A8 0029B2E8  90 03 00 04 */	stw r0, 4(r3)
/* 8029E3AC 0029B2EC  4E 80 00 20 */	blr 

