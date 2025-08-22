/**
* @file d_a_e_yk.h
* This header contains information about the Shadow Keese actor.
*
*
*/

#ifndef D_A_E_YK_H
#define D_A_E_YK_H

#include "SSystem/SComponent/c_phase.h"
#include "Z2AudioLib/Z2Creature.h"
#include "f_op/f_op_actor.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_path.h"

/**
 * @enum daE_YK_Action
 * @brief Shadow Keese current action. 
 * 
 */
enum daE_YK_Action {
    ACT_ROOF,           /**< Keese hangs from roof, enters combat if player gets close. */ 
    ACT_FIGHT_FLY,      /**< Keese flies directly towards player to initiate combat. */
    ACT_FIGHT,          /**< Keese circles around player at a distance, preparing to attack. */
    ACT_ATTACK,         /**< Keese charges directly at player to deal damage. */
    ACT_RETURN,         /**< Keese returns to its home position on the roof. */
    ACT_FLY,            /**< Keese flies randomly around its home position. */
    ACT_PATH_FLY,       /**< Keese follows predefined path points in the room. */
    ACT_CHANCE = 10,    /**< Keese is stunned from shield attack, falls and bounces on ground. */
    ACT_WOLFBITE = 13,  /**< Keese is caught in wolf Link's mouth, can be thrown. */
    ACT_WIND            /**< Keese is caught in Gale Boomerang's wind, spins around it. */
};

/**
 * @ingroup actors-enemies
 * @class e_yk_class
 * @brief Twilight Keese
 * 
 * @details 
 * 
 */
class e_yk_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class mPhase;  ///< @brief Resource loading phase handler.
    /* 0x5B4 */ u8 mBehaviorMode;                       ///< @brief Controls default behavior (0: return to roof, 1: free flying).
    /* 0x5B5 */ u8 mPlayerTriggerBase;                  ///< @brief Base value used to calculate player detection range (multiplied by 100).
    /* 0x5B6 */ u8 field_0x5b6;                         ///< @brief Appears unused.
    /* 0x5B7 */ u8 mPathIdx;                            ///< @brief Path index for room path lookup.
    /* 0x5B8 */ u8 mPathActive;                         ///< @brief Flag indicating if path following is active (pathIdx + 1).
    /* 0x5B9 */ s8 mPathPntIdx;                         ///< @brief Current index in path point array.
    /* 0x5BA */ s8 mPathDirection;                      ///< @brief Direction to traverse path (1: forward, -1: backward).
    /* 0x5BC */ dPath* mpPath;                          ///< @brief Pointer to current flight path data.
    /* 0x5C0 */ mDoExt_McaMorfSO* mpMorfSO;             ///< @brief Model and animation handler.
    /* 0x5C4 */ Z2CreatureEnemy mCreature;              ///< @brief Sound effect and voice handler.
    /* 0x668 */ s32 mResIdx;                            ///< @brief Current animation resource index.
    /* 0x66C */ s16 mFrameCounter;                      ///< @brief Increments each frame, used for periodic events.
    /* 0x66E */ s16 mAction;                            ///< @brief Current action state. @see daE_YK_Action
    /* 0x670 */ s16 mActionPhase;                       ///< @brief Sub-phase within current action.
    /* 0x674 */ cXyz mPathPntPos;                       ///< @brief Target position (path point or player).
    /* 0x680 */ s16 mAngleFromPlayer;                   ///< @brief Angle between keese and player in XZ plane.
    /* 0x684 */ f32 mDistanceXZFromPlayer;              ///< @brief XZ distance between keese and player.
    /* 0x688 */ f32 mPlayerTrigger;                     ///< @brief Distance threshold for player detection.
    /* 0x68C */ f32 mMoveInterpolation;                 ///< @brief Movement interpolation factor (0.0-1.0).
    /* 0x690 */ f32 mTurnSpeed;                         ///< @brief Angular velocity for turning.
    /* 0x694 */ f32 mKnockbackSpeed;                    ///< @brief Speed when knocked back from damage.
    /* 0x698 */ s16 mKnockbackAngle;                    ///< @brief Direction angle when knocked back.
    /* 0x69A */ csXyz mStunRotation;                    ///< @brief Rotation angles during stun animation.
    /* 0x6A0 */ s8 mDeathFlag;                          ///< @brief Set to 1 when keese is dying.
    /* 0x6A2 */ s16 mActionTimers[4];                   ///< @brief Timers for various action states (movement, attack, etc).
    /* 0x6AA */ s16 mInvulnerabilityTimer;              ///< @brief Frames of damage invulnerability remaining.
    /* 0x6AC */ s16 field_0x6ac[6];                     ///< @brief Reserved/unused timer array.
    /* 0x6B8 */ cXyz mBoomrangPosOffset;                ///< @brief Position offset when caught in Gale Boomerang.
    /* 0x6C4 */ s16 mBoomrangXRotOffset;                ///< @brief Rotation offset when caught in Gale Boomerang.
    /* 0x6C8 */ dBgS_AcchCir mWallCollisionCircle;      ///< @brief Circular collision volume for wall detection and response.
    /* 0x708 */ dBgS_ObjAcch mActorCollisionHandler;    ///< @brief Handles all collision types (ground/wall/roof/water) for this actor.
    /* 0x8E0 */ dCcD_Stts mCollisionStatus;             ///< @brief Collision state tracking.
    /* 0x91C */ dCcD_Sph mCollisionSphere;              ///< @brief Spherical collision shape.
    /* 0xA54 */ dCcU_AtInfo mAtColliderInfo;            ///< @brief Attack collision processor.
    /* 0xA78 */ u32 mSmokeEffectId;                     ///< @brief ID for smoke particle effect.
    /* 0xA7C */ u32 mSmokeEffectParams;                 ///< @brief Parameters for smoke effect.
    /* 0xA80 */ u32 mShadowParticleId;                  ///< @brief ID for shadow trail particle effect.
    /* 0xA84 */ u32 mWingParticleIds[2];                ///< @brief IDs for wing particle effects.
    /* 0xA8C */ u8 mIsFirstSpawn;                       ///< @brief Set to 1 if this is the first keese spawned in room.
};

STATIC_ASSERT(sizeof(e_yk_class) == 0xA90);

#endif /* D_A_E_YK_H */
