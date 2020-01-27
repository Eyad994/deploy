<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class NotificationTime extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'notification:send';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        /**
         * $todayReserves = Reserves::get('date', date('Y-m-d'))->get(['time', 'user_id', 'provider_id']);
         * foreach($todayReserves as $reserve)
         * {
         *   $userToken = User::where('id', $reserve['user_id'])->pluck('device_token')[0];
         *   $providerName = User::where('id', $reserve['provider_id'])->pluck('name')[0];
         *   $noti->toSingleDevice($userToken, 'Congratulations!', $ProviderName.' has waiting you', null, null);
         * }
         */

       /* \Log::info("Cron time is: ".date("g:iA", strtotime(now())));

        $todayTimes = Notification::where('date', date('Y-m-d'))->pluck('time');

        foreach ($todayTimes as $time){
            Log::notice("Time is: ". $time);
            $token = 'coSYTXVthR0:APA91bGfJN1_FViYa2SlUIUbnAdN5nATsiKMdUyfKDtc0cL-abg0NhPSqdUOZg3Ih2v2vx-pbaDFe2Xl0xC9pCv40nHq47eNn7jIen6PMTktMFY3XhkQrCzXeJdyQgL8GzvRRSeUEBP8';
            $noti->toSingleDevice($token, 'Your reserve is almost ', 'body', null, null);
            if (date("g:iA", strtotime($time)) == date("g:iA", strtotime(now()))){
                Log::info("Time true when : ".$time);
            }
        }

        $this->info('Demo:Cron Command Run successfully!');*/
    }
}
